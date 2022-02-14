<?php
namespace Post\Repositories;
use Modules\Post\Entities\Post;
use Post\Repositories\PostRepositoryImpl;
use Post\Interface\PostRepositoryInterface;

class PostRepositoryImpl implements PostRepositoryInterface
{   
    public function getAllPosts()
    {
        return Post::with('category')->latest()->paginate(5);
    }

    public function createPost(array $postDetails)
    {
        return Post::create($postDetails);
    }

    public function getPostById($postId)
    {
        return Post::findOrFail($postId);
    }

    public function updatePost($postId, array $newDetails)
    {
        return Post::whereId($postId)->update($newDetails);
    }
    
    public function deletePost($postId)
    {
        Post::destroy($postId);
    } 
}