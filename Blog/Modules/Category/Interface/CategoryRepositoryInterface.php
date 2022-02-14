<?php

namespace Category\Interface;

interface CategoryRepositoryInterface
{
    public function getAllCategorys();
    public function createCategory(array $categoryDetails);
    public function getCategoryById($categoryId);
    public function updateCategory($categoryId, array $newDetails);
    public function deleteCategory($categoryId);
}