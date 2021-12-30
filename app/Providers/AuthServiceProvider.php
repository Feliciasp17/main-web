<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
        Gate::define('PintuMimin','App\Policies\PanitiaPolicy@mimin');
        Gate::define('PintuPubreg','App\Policies\PanitiaPolicy@pubreg');
        Gate::define('PintuPetua','App\Policies\PanitiaPolicy@petua');
        Gate::define('PintuPanitia','App\Policies\PanitiaPolicy@panitia');
		Gate::define('PintuKeamanan','App\Policies\PanitiaPolicy@keamanan');
    }
}
