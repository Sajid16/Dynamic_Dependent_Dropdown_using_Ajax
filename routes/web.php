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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/dropdown_ajax_test','DynamicDependent@index');
Route::post('dynamic_dependent/fetch','DynamicDependent@fetch')->name('dynamicdependent.fetch');


Route::get('/prodview','TestController@prodfunct');
Route::get('/findProductName','TestController@findProductName');
Route::get('/findPrice','TestController@findPrice');

 