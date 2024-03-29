<?php

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

Route::get('/','HomeController@index');
Route::get('/search','PostController@search');
Route::delete('/delete','PostController@deleteall');
Route::get('/crud','crudcontroller@create')->name('ajax');
Route::get('/post','PostController@index')->name('post');
Route::resource('posts','PostController');
Route::resource('cruds','crudcontroller');



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/verification/{token}','Auth\RegisterCOntroller@verification');