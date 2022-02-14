<?php

namespace Modules\Post\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Post\Entitites\Post;
use Illuminate\Contracts\Support\Renderable;
use Post\Interface\PostRepositoryInterface;

class PostController extends Controller
{
    private PostRepositoryInterface $PostRepository;

    public function __construct(PostRepositoryInterface $postRepository)
    {
        $this->postRepository = $postRepository;
    }

    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index(): JsonResponse
    {
        return response()->json([
            'data' => $this->postRepository->getAllPosts()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request): JsonResponse
    {   
        $postDetails = $request->only([
            'user_id',
            'category_id',
            'title', 
            'description',
            'image'
        ]);
        return response()->json([
                'data' => $this->postRepository->createPost($postDetails)
            ], Response::HTTP_CREATED
        );
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show(Request $request): JsonResponse
    {
        $postId = $request->route('id');

        return response()->json([
            'data' => $this->postRepository->getPostById($postId)
        ]);
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request): JsonResponse
    {
        $postId = $request->route('id');
        $postDetails = $request->only([
            'user_id',
            'category_id',
            'title', 
            'description',
            'image'
        ]);
        return response()->json([
            'data' => $this->postRepository->updatePost($postId, $postDetails)
        ]);
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy(Request $request): JsonResponse
    {
        $postId = $request->route('id');
        $this->postRepository->deletePost($postId);
        return response()->json(null, Response::HTTP_NO_CONTENT);
    }

}
