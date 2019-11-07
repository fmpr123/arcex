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

Route::get('/','PagesController@home');
Route::get('/layout','PagesController@layout');
Route::get('/contact','PagesController@contact');

Route::resource('projects','ProjectsController');
Route::resource('posts','PostsController');


// Route::get('/projects','ProjectsController@index');
// Route::get('/projects/create','ProjectsController@create');
// Route::post('/projects','ProjectsController@store');

// Route::get('/projects/{id}','ProjectsController@show');
// Route::get('/projects/{id}/edit','ProjectsController@edit');
// Route::patch('/projects/{id}','ProjectsController@update');
// Route::delete('/projects/{id}','ProjectsController@destroy');