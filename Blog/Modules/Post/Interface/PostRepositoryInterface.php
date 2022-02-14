<?php

namespace Post\Interface;

interface PostRepositoryInterface
{   
    public function getAllPosts();
    public function createPost(array $postDetails);
    public function getPostById($postId);
    public function updatePost($postId, array $newDetails);
    public function deletePost($postId);   
}