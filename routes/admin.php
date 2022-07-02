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


//********************************************
// dashboard routes
//********************************************
// check if user login
Route::group(["middleware" => "admin"], function() {

    Route::get("dashboard/", "dashboard\DashboardController@index");
    Route::get("/", "dashboard\DashboardController@index");
    Route::get("dashboard/main", "dashboard\DashboardController@main");

    // branch routes
    Route::get("dashboard/branch", "dashboard\BranchController@index");
    Route::post("dashboard/branch/store", "dashboard\BranchController@store");
    Route::get("dashboard/branch/data", "dashboard\BranchController@getData");
    Route::get("dashboard/branch/edit/{branch}", "dashboard\BranchController@edit");
    Route::get("dashboard/branch/show/{branch}", "dashboard\BranchController@show");
    Route::get("dashboard/branch/remove/{branch}", "dashboard\BranchController@destroy");
    Route::post("dashboard/branch/update/{branch}", "dashboard\BranchController@update");

    // notification routes
    Route::get("dashboard/notification", "dashboard\NotificationController@index");
    Route::get("dashboard/notification/data", "dashboard\NotificationController@getData");
    Route::get("dashboard/notification/remove/{notification}", "dashboard\NotificationController@destroy");




    // role routes
    Route::get("dashboard/role", "dashboard\RoleController@index");
    Route::post("dashboard/role/store", "dashboard\RoleController@store");
    Route::get("dashboard/role/data", "dashboard\RoleController@getData");
    Route::get("dashboard/role/edit/{role}", "dashboard\RoleController@edit");
    Route::get("dashboard/role/permission/{role}", "dashboard\RoleController@permissions");
    Route::post("dashboard/role/permission/update/{role}", "dashboard\RoleController@updatePermissions");
    Route::get("dashboard/role/remove/{role}", "dashboard\RoleController@destroy");
    Route::post("dashboard/role/update/{role}", "dashboard\RoleController@update");

    // user routes
    Route::get("dashboard/user", "dashboard\UserController@index");
    Route::get("dashboard/profile", "dashboard\UserController@profile");
    Route::post("dashboard/user/store", "dashboard\UserController@store");
    Route::get("dashboard/user/data", "dashboard\UserController@getData");
    Route::get("dashboard/user/edit/{user}", "dashboard\UserController@edit");
    Route::get("dashboard/user/remove/{user}", "dashboard\UserController@destroy");
    Route::post("dashboard/user/update/{user}", "dashboard\UserController@update");

    // option routes
    Route::get("dashboard/option/", "dashboard\SettingController@index");
    Route::get("dashboard/option/update", "dashboard\SettingController@update");
    Route::post("dashboard/translation/update", "dashboard\SettingController@updateTranslation");

    // helper route
    Route::get("dashboard/print/{page}", "dashboard\HelperController@print");



});

// login route
Route::get("dashboard/login/", "dashboard\LoginController@index");
Route::post("dashboard/sign", "dashboard\LoginController@login");
Route::get("dashboard/logout", "dashboard\LoginController@logout");


Route::get("notify", "dashboard\NotificationController@get");

Route::get("test", function(){
    return session('locale');
});

// show order
