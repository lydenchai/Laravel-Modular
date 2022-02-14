<?php

namespace Modules\Category\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Modules\Category\Entitites\Category;
use Illuminate\Contracts\Support\Renderable;
use Category\Interface\CategoryRepositoryInterface;

class CategoryController extends Controller
{
    private CategoryRepositoryInterface $categoryRepository;

    public function __construct(CategoryRepositoryInterface $categoryRepository)
    {
        $this->categoryRepository = $categoryRepository;
    }

    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index(): JsonResponse
    {
        return response()->json([
            'data' => $this->categoryRepository->getAllCategorys()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request): JsonResponse
    {
        $categoryDetails = $request->only([
            'name',
        ]);

        return response()->json([
                'data' => $this->categoryRepository->createCategory($categoryDetails)
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
        $categoryId = $request->route('id');

        return response()->json([
            'data' => $this->categoryRepository->getCategoryById($categoryId)
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
        $categoryId = $request->route('id');
        $categoryDetails = $request->only([
            'name',
        ]);

        return response()->json([
            'data' => $this->categoryRepository->updateCategory($categoryId, $categoryDetails)
        ]);
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy(Request $request): JsonResponse
    {
        $categoryId = $request->route('id');
        $this->categoryRepository->deleteCategory($categoryId);
        return response()->json(null, Response::HTTP_NO_CONTENT);
    }

}
