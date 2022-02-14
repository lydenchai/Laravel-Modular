<?php

namespace Modules\Category\Providers;
use Illuminate\Support\ServiceProvider;
use Category\Repositories\CategoryRepositoryImpl;
use Category\Interface\CategoryRepositoryInterface;

class CategoryServiceProvider extends ServiceProvider
{
    public function register()
	{
		$this->app->bind(
			CategoryRepositoryInterface::class,
			CategoryRepositoryImpl::class
		);
    }
}