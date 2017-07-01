<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


//openAPI routing
Route::group(['prefix' => 'openapi'], function () {
    Route::get('getprojectsettings/{id}', function () {
        return 'hello';
//        return \App\Http\Controllers\Web\SinglePageController::index(request()->id, request()->slug);
    });
});