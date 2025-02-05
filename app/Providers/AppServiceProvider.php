<?php

namespace App\Providers;

use App\Service\GoogleDriveService as ServiceGoogleDriveService;
use App\Services\FirebaseStorageService;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->singleton(FirebaseStorageService::class, function ($app) {
            return new FirebaseStorageService();
        });
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
