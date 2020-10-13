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
Route::get('/article/full_news/{news_title}','HomeController@readFullNews');
Route::get('/Category/{category_name}','HomeController@categorizedNews');


Route::resource('contact','ContactController');
Route::get('all/contact','ContactController@showAllContacts');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');



Route::get('admin/sample', 'NewsController@sample')->name('sample');
Route::get('admin/save-sample', 'NewsController@saveSample')->name('sample2');



Route::GET('admin/home', 'AdminController@index');



Route::GET('admin', 'Admin\LoginController@showLoginForm')->name('admin.login');          
Route::POST('admin', 'Admin\LoginController@login')->name('admin.login');
//Route::get('admin/home', 'AdminController@index')->name('admin.home'); 
Route::GET('admin/logout', 'Admin\LoginController@logout');                      
Route::POST('admin/logout', 'Admin\LoginController@logout'); 

Route::POST('admin-password/email', 'Admin\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
Route::GET('admin-password/reset', 'Admin\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
Route::POST('admin-password/reset','Admin\ResetPasswordController@reset');
Route::GET('admin-password/reset/{token}', 'Admin\ResetPasswordController@showResetForm')->name('admin.password.reset');

Route::GET('admin/register', 'Admin\RegisterController@showRegistrationForm')->name('admin.register');
Route::POST('admin/register','Admin\RegisterController@register')->name('admin.register.post');


//ADMIN PANEL
Route::GET('admin/insert-news', 'NewsController@insertNews');
Route::POST('admin/save-news', 'NewsController@saveNews');
Route::GET('admin/manage-news', 'NewsController@manageNews');
Route::GET('admin/edit-news/{id}', 'NewsController@editNews');
Route::POST('admin/update-news', 'NewsController@updateNews');
Route::GET('admin/delete-news/{id}', 'NewsController@deleteNews');
Route::GET('admin/unpublish-news/{id}', 'NewsController@unpublishNews');
Route::GET('admin/publish-news/{id}', 'NewsController@publishNews');


