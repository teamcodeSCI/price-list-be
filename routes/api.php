<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\PriceController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/unauthorized', function () {
    return response()->json([
        'status' => false,
        'message' => 'Unauthorized'
    ], 401);
})->name('unauthorized');
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::prefix('brand')->group(function () {
    Route::get('/', [BrandController::class, 'index']);
    Route::post('/create', [BrandController::class, 'store']);
    Route::put('/{brand}', [BrandController::class, 'update']);
    Route::delete('/{brand}', [BrandController::class, 'destroy']);
});
Route::prefix('category')->group(function () {
    Route::get('/', [CategoryController::class, 'index']);
    Route::post('/create', [CategoryController::class, 'store']);
    Route::put('/{category}', [CategoryController::class, 'update']);
    Route::delete('/{category}', [CategoryController::class, 'destroy']);
});

Route::middleware(['auth:api'])->group(function () {
    Route::get('/user', [AuthController::class, 'getUser']);
    Route::prefix('landing')->group(function () {
        Route::get('/', [LandingController::class, 'index']);
        Route::post('/create', [LandingController::class, 'store']);
        Route::put('/{landing}', [LandingController::class, 'update']);
        Route::delete('/{landing}', [LandingController::class, 'destroy']);
    });
    Route::prefix('price')->group(function () {
        Route::get('/', [PriceController::class, 'index']);
        Route::post('/create', [PriceController::class, 'store']);
        Route::put('/{price}', [PriceController::class, 'update']);
        Route::delete('/{price}', [PriceController::class, 'destroy']);
    });
});
