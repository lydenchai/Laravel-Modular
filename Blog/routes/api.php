<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use Models\Comment;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// User Public Route
Route::get('/user_post', [UserController::class, 'index']);
Route::get('/user/{id}', [UserController::class, 'show']);

// User Private route
Route::post('/user', [UserController::class, 'store']);
Route::put('/user/{id}', [UserController::class, 'update']);
Route::delete('/user/{id}', [UserController::class, 'delete']);