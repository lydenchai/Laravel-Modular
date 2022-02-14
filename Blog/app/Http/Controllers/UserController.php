<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return UserResource::collection(User::with('post')->latest()->paginate(5));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required|max:50|regex:/^[a-zA-Z]/',
            'email' => 'required|unique:users',
            'password' => 'required|min:8|confirmed',
            'image'=>'nullable|image|mimes:jpg,jpeg,png,gif,jfif|max:1999',
        ]);
        $request->file('image')->store('public/images');
        $user = new User();
        $user->username = $request->username;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->image =$request->file('image')->getClientOriginalName();
        $user->save();
        $token = $user->createToken('MyToken')->plainTextToken;
        return response()->json([
            'massage' => 'User created', 
            'data' => $user,
        ], 201 );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return User::findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'username' => 'required|max:50|regex:/^[a-zA-Z]/',
            'email' => 'required|unique:users',
            'password' => 'required|min:8|confirmed',
        ]);
        $user = User::findOrFail($id);
        $user->username = $request->username;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        return response()->json([
            'massage' => 'User updated', 
            'data' => $user
        ], 200 );
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $isDeleted = User::destroy($id);
        if($isDeleted == 1){
            return response()->json(['massage'=>'User Deleted'], 200);
        }else{
            return response()->json(['massage'=>'Not Found'], 404);
        }
    }
}
