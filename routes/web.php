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

Route::group(['middleware' => ['auth']], function() {
    //The list of all documents
    Route::get('documents','DocumentsController@documnetslist');
//Create a new documents
    Route::post('/document','DocumentsController@create')->name('Create');
//Get document by id
    Route::get('/document/{id}','DocumentsController@showeditform')->name('GetRoute');
//Edit a draft document
    Route::patch('document/{id} ','DocumentsController@editdocument')->name('EditRoute');

//Publish the document
    Route::post('/document/{id}/publish','DocumentsController@publishdocument')->name("PublishRoute");

});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
