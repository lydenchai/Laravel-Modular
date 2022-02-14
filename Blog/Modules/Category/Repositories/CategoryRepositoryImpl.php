<?php
namespace Category\Repositories;
use Modules\Category\Entities\Category;
use Category\Repositories\CategoryRepositoryImpl;
use Category\Interface\CategoryRepositoryInterface;
use Modules\Category\Transformers\CategoryResource;

class CategoryRepositoryImpl implements CategoryRepositoryInterface
{   
    public function getAllCategorys()
    {
        return CategoryResource::collection(Category::latest()->get());
    }

    public function createCategory(array $categoryDetails)
    {
        return Category::create($categoryDetails);
    }

    public function getCategoryById($categoryId)
    {
        return Category::findOrFail($categoryId);
    }

    public function updateCategory($categoryId, array $newDetails)
    {
        return Category::whereId($categoryId)->update($newDetails);
    }

    public function deleteCategory($categoryId)
    {
        Category::destroy($categoryId);
    }
}