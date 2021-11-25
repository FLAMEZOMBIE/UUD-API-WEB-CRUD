<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\UudController;
use App\Models\Uud;
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

Route::post('/login', [LoginController::class, 'store']);

Route::get('/uud', [UudController::class, 'index']);
Route::post('/uud', [UudController::class, 'create']);
Route::post('uud/{id}', [UudController::class, 'update']);
Route::delete('uud/{id}', [UudController::class, 'delete']);
