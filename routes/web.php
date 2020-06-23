<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});
Route::any('login.html',  "admin\UserController@login");
//Route::post('login',  "admin\UserController@login");
Route::get('dashboard.html',  "admin\UserController@dashboard");
Route::get('register.html',  "admin\UserController@register");
Route::post('register.html',  "admin\UserController@register");
Route::get('dashboard.html',"admin\ImagesController@dashboard");
Route::post('dashboard.html',"admin\ImagesController@dashboard");

//controller, queru builder, model, orm, views
