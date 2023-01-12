<?php

use Illuminate\Support\Facades\Route;

//Controller added
use App\Http\Controllers\GuestController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RegularPackageController;
use App\Http\Controllers\PremiumPackageController;
use App\Http\Controllers\ProPackageController;
use App\Http\Controllers\UltraproPackageController;
use App\Http\Controllers\SslCommerzPaymentController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LocalGuideHostController;
use App\Http\Controllers\SuperAdminController;

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


//For Guest visit
Route::get('/', [GuestController::class, 'homePage'])->name('/');
Route::get('/place/{id}', [GuestController::class, 'choosePlace'])->name('place');
Route::post('/contact/send-message', [GuestController::class, 'sendMessage'])->name('/contact/send-message');

//For registered user



Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
   
    Route::get('/dashboard', [HomeController::class, 'afterLogin'])->name('dashboard');
    Route::get('/history', [HomeController::class, 'viewHistory'])->name('/history');
    Route::get('/download/payment-copy/{id}', [HomeController::class, 'paymentCopyDownload'])->name('/download/payment-copy');

});

Route::get('/place/{placeId}/package/{id}', [GuestController::class, 'selectedPackage'])->name('place/package');

//Regular Package
Route::get('/place/{placeId}/regular-package/{packageId}/guide-service/{id}', [RegularPackageController::class, 'afterSelectedGuide'])->name('place/package/guide-service');
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/place/{placeId}/regular-package/{packageId}/guide-service/{guideServiceId}/bill-generate', [RegularPackageController::class, 'billGenerate'])->name('place/package/guide-service/bill-generate');
});

//Premium Package
Route::get('/place/{placeId}/premium-package/{packageId}/host-service/{id}', [PremiumPackageController::class, 'afterSelectedHost'])->name('place/package/host-service');
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/place/{placeId}/premium-package/{packageId}/host-service/{hostServiceId}/bill-generate', [PremiumPackageController::class, 'billGenerate'])->name('place/package/host-service/bill-generate');
});

//Pro Package
Route::get('/place/{placeId}/pro-package/{packageId}/host-service/{id}', [ProPackageController::class, 'afterSelectedHost'])->name('place/package/host-service');
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/place/{placeId}/pro-package/{packageId}/host-service/{hostServiceId}/bill-generate', [ProPackageController::class, 'billGenerate'])->name('place/package/host-service/bill-generate');
});

//Ultarpro Package
Route::get('/place/{placeId}/ultrapro-package/{packageId}/guide-service/{id}', [UltraproPackageController::class, 'afterSelectedGuide'])->name('place/package/guide-service');
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/place/{placeId}/ultrapro-package/{packageId}/guide-service/{guideServiceId}/bill-generate', [UltraproPackageController::class, 'billGenerate'])->name('place/package/guide-service/bill-generate');
});

// SSLCOMMERZ Start
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

    Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
    Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

    Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
    Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

    Route::post('/success', [SslCommerzPaymentController::class, 'success']);
    Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
    Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

    Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);

   
});



//Local guide & host
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

    Route::get('/add/service', [LocalGuideHostController::class, 'addService'])->name('/add/service');
    Route::post('/add/service/process', [LocalGuideHostController::class, 'addServiceProcess'])->name('/add/service/process');
    Route::get('/all/service', [LocalGuideHostController::class, 'allService'])->name('/all/service');
    Route::get('/balance/statement', [LocalGuideHostController::class, 'balanceStatement'])->name('/balance/statement');
   
});


//Super admin
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

    Route::get('/place-list', [SuperAdminController::class, 'placeList'])->name('/place-list');
    Route::get('/add/place', [SuperAdminController::class, 'addPlace'])->name('/add/place');
    Route::get('/local-guide-list', [SuperAdminController::class, 'guideList'])->name('/local-guide/list');
    Route::get('/local-host-list', [SuperAdminController::class, 'hostList'])->name('/local-host/list');
    Route::get('/tourist-list', [SuperAdminController::class, 'touristList'])->name('/tourist/list');
    Route::get('/virtual-assistant-list', [SuperAdminController::class, 'virtualAssistantList'])->name('/virtual-assistant/list');
    Route::get('/super-admin-list', [SuperAdminController::class, 'superAdminList'])->name('/super-admin/list');
    Route::get('/transaction/list', [SuperAdminController::class, 'transactionList'])->name('/transaction/list');


});