<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\JobsController;
use App\Http\Controllers\ApplicationController;

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
Route::post('login',[UsersController::class,'login'])->name('login');
Route::get('jobs',[JobsController::class,'index'])->name('jobs');
Route::post('view_jobs',[JobsController::class,'viewJobDetail'])->name('view_jobs');
Route::post('apply',[ApplicationController::class,'store'])->name('apply');
Route::group(['middleware' => 'auth:api'], function()
{ 
Route::group(['middleware' => ['hr']], function () {
    Route::post('jobPost',[JobsController::class,'store'])->name('jobPost');
    Route::post('changeJobStatus',[JobsController::class,'status'])->name('changeJobStatus');
    Route::get('application',[ApplicationController::class,'index'])->name('application');
    Route::post('changeStatus',[ApplicationController::class,'status'])->name('changeStatus');
});

});

