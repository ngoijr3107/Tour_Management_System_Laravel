<?php

use Illuminate\Support\Facades\Route;

//Controller added
use App\Http\Controllers\GuestController;
use App\Http\Controllers\RegularPackageController;
use App\Http\Controllers\PremiumPackageController;
use App\Http\Controllers\ProPackageController;
use App\Http\Controllers\UltraproPackageController;

use Illuminate\Support\Facades\Redirect;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', [GuestController::class, 'homePage'])->name('/');
Route::get('/place/{id}', [GuestController::class, 'choosePlace'])->name('place');


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return redirect()->intended();
    })->name('dashboard');
});

Route::get('/place/{placeId}/package/{id}', [GuestController::class, 'selectedPackage'])->name('place/package');

//Regular Package
Route::get('/place/{placeId}/regular-package/{packageId}/guide-service/{id}', [RegularPackageController::class, 'afterSelectedGuide'])->name('place/package/guide-service');

//Premium Package
Route::get('/place/{placeId}/premium-package/{packageId}/host-service/{id}', [PremiumPackageController::class, 'afterSelectedHost'])->name('place/package/host-service');

//Pro Package
Route::get('/place/{placeId}/pro-package/{packageId}/host-service/{id}', [ProPackageController::class, 'afterSelectedHost'])->name('place/package/host-service');

//Ultarpro Package
Route::get('/place/{placeId}/ultrapro-package/{packageId}/guide-service/{id}', [UltraproPackageController::class, 'afterSelectedGuide'])->name('place/package/guide-service');