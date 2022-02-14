<?php

namespace Modules\Post\Providers;
use Illuminate\Support\ServiceProvider;
use Post\Repositories\PostRepositoryImpl;
use Post\Interface\PostRepositoryInterface;

class PostServiceProvider extends ServiceProvider
{
    public function register()
	{
		$this->app->bind(
			PostRepositoryInterface::class,
			PostRepositoryImpl::class
		);
    }
}