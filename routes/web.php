<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Admin Controllers
|--------------------------------------------------------------------------
|
*/

use App\Http\Controllers\admin\DashboardController;
use App\Http\Controllers\admin\BasicInfoController;
use App\Http\Controllers\admin\SliderController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\SubCategoryController;
use App\Http\Controllers\admin\SubChildController;
use App\Http\Controllers\admin\MessageController;
use App\Http\Controllers\admin\ProductController;
use App\Http\Controllers\admin\AdminController; 
use App\Http\Controllers\admin\CouponController;
use App\Http\Controllers\admin\OrderController;
use App\Http\Controllers\admin\ReviewController;
use App\Http\Controllers\admin\HomeFeatureController;
use App\Http\Controllers\admin\DealController;
use App\Http\Controllers\admin\BlogCategoryController;
use App\Http\Controllers\admin\BlogController;
use App\Http\Controllers\admin\UserController;
use App\Http\Controllers\admin\AboutUsController;
use App\Http\Controllers\admin\ServiceController;
use App\Http\Controllers\admin\RoleController;
use App\Http\Controllers\LanguageController;

/*
|--------------------------------------------------------------------------
| Frontend Controllers
|--------------------------------------------------------------------------
|
*/
use App\Http\Controllers\frontend\HomeController;
use App\Http\Controllers\frontend\AboutUsFEController;
use App\Http\Controllers\frontend\CustomerFEController;
use App\Http\Controllers\frontend\FacebookController;
use App\Http\Controllers\frontend\GoogleController;
use App\Http\Controllers\frontend\CartController;
use App\Http\Controllers\frontend\WishListController;
use App\Http\Controllers\frontend\OrderFEController;
use App\Http\Controllers\frontend\ReviewFEController;
use App\Http\Controllers\frontend\blogFEController;
// use App\Http\Controllers\frontend\UserFEController;






/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
*/
// Route::get('myrts', function () {
//     $routeCollection = Route::getRoutes();

//     echo "<table style='width:100%'>";
//     echo "<tr>";
//     echo "<td width='10%'><h4>Name</h4></td>";
//     echo "</tr>";
//     foreach ($routeCollection as $value) {
//         echo "<tr>";
//         echo "<td>" . $value->getName() . "</td>";
//         echo "</tr>";
//     }
//     echo "</table>";
// });


Route::get('/clear', function() {
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    return 'View cache has been cleared';
});

Route::prefix('admin')->namespace('App\Http\Controllers\admin')->group(function () {

    Route::match(['get', 'post'],'login', [AdminController::class , 'login']);
    Route::middleware('admin')->group(function (){
        Route::post('logout', [AdminController::class ,'logout']);

        Route::prefix('profile')->group(function(){  
            Route::post('check-admin-password', [AdminController::class ,'checkAdminPassword']);
            Route::match(['get', 'post'],'update-admin-details/{id?}', [AdminController::class ,'updateAdminDetails'])->name('admins.update.details');
            Route::match(['get', 'post'],'update-admin-password/{id?}', [AdminController::class ,'updateAdminPassword'])->name('admins.update.password');
        });


        Route::resource('dashboard', DashboardController::class);
        Route::resource('basic-infos', BasicInfoController::class);

        Route::prefix('admin')->group(function () {
            Route::resource('roles', RoleController::class);
            Route::resource('admins', AdminController::class);
        });


        Route::match(['get','post'],'basic-infos-localization/{id}/{lang}',[BasicInfoController::class,'localization']);

        Route::resource('sliders', SliderController::class);

        Route::prefix('catalogue')->group(function(){

            Route::resource('categories', CategoryController::class);
            Route::match(['get', 'post'],'category-localization/{id}/{lang}',[CategoryController::class,'localization']);

            Route::resource('sub-categories', SubCategoryController::class);
            Route::match(['get', 'post'],'subcategory-localization/{id}/{lang}',[SubCategoryController::class,'localization']);
            Route::get('sub-cat-load/{subCatID}', [SubCategoryController::class, 'subCatLoad']);

            Route::resource('sub-child', SubChildController::class);
            Route::match(['get', 'post'],'subchild-localization/{id}/{lang}',[SubChildController::class,'localization']);

            Route::resource('colors', ColorController::class);
            Route::resource('sizes', SizeController::class);

            Route::resource('products', ProductController::class);
            Route::match(['get', 'post'],'product-localization/{id}/{lang}',[ProductController::class,'localization']);
                
            Route::get('load-sub-child/{id}', [ProductController::class, 'subChild']);

        });

        Route::resource('/coupons_manage', CouponController::class);
        Route::resource('reviews', ReviewController::class);

        Route::resource('/messages', MessageController::class);
        Route::get('/messages/status/{id}', [MessageController::class,'updateStatus'])->name('messages.status');

        Route::resource('/services', ServiceController::class);
        Route::match(['get','post'],'services-localization/{id}/{lang}',[ServiceController::class,'localization']);
        
        Route::resource('/orders', OrderController::class);
        Route::get('/orders/invoice/{id}/{print?}', [OrderController::class, 'invoice'])->name('orders.print');

        Route::resource('/home-features', HomeFeatureController::class);
        Route::resource('deals', DealController::class);


        Route::resource('/blog-category', BlogCategoryController::class);
        Route::match(['get','post'],'blog-category-localization/{id}/{lang}',[BlogCategoryController::class,'localization']);

        Route::resource('/blogs', BlogController::class);
        Route::match(['get','post'],'blog-localization/{id}/{lang}',[BlogController::class,'localization']);

        Route::resource('/customers', UserController::class);
        
        Route::resource('/about-us', AboutUsController::class);

    });

});


/*
|--------------------------------------------------------------------------
| Frontend Routes
|--------------------------------------------------------------------------
|
*/

Route::middleware('auth')->namespace('App\Http\Controllers\frontend')->controller(UserFEController::class)->prefix('user')->group(function () {


    Route::get('profile','profile');
    Route::post('update-profile','update');
    Route::get('change-password','changePassword');
    Route::post('check-user-password','checkUserPassword');
    Route::post('change-user-password/{id?}','updateUserPassword');



    Route::get('address-book','addressBook');
    Route::post('address-store','addressStore');

    Route::get('checkout',[HomeController::class, 'checkout']);
    Route::match(['get', 'post'],'order-place',[OrderFEController::class,'store']);
    Route::get('my-orders',[OrderFEController::class,'index']);
    Route::get('orders/invoice/{id}/{print?}', [OrderFEController::class, 'invoice']);
    Route::get('review/{order_id}/{product_id}', [ReviewFEController::class, 'createOrEdit']);
    Route::post('review/store-update', [ReviewFEController::class, 'storeUpdate']);
    
    Route::get('order-completed',[HomeController::class, 'orderCompleted']);
});

Route::get('/', function (){return redirect('home');});
Route::get('/home',[HomeController::class, 'index']);
Route::get('/contact',[HomeController::class, 'contact']);
Route::get('/services/{slug}',[HomeController::class, 'services']);
Route::get('/product-details/{slug}',[HomeController::class, 'productDetails']);
Route::get('/load-sizes/{product_id}/{color_id}',[HomeController::class, 'loadSizes']);
Route::post('/message/store',[HomeController::class,'messageStore']);

Route::get('/about-us',[AboutUsFEController::class, 'index']);



Route::get('/blog/{url}',[blogFEController::class, 'blog']);
Route::get('/blog-details/{url}',[blogFEController::class, 'blogDetails']);

Route::get('/cart',[CartController::class, 'index']);
Route::post('cart-insert-update',[CartController::class,'insertUpdate']);
Route::get('cart-delete/{index}',[CartController::class,'delete']);
Route::get('current-stock/{product_id}/{color_id}/{size_id}',[CartController::class,'currentStock']);
Route::post('coupon-apply',[CartController::class,'couponApply']);
Route::get('coupon-delete',[CartController::class,'couponDelete']);



Route::get('/wish-list',[WishListController::class, 'index']);
Route::post('wishlist-insert-update',[WishListController::class,'insertUpdate']);
Route::get('wishlist-delete/{index}',[WishListController::class,'delete']);
Route::get('wishlist-current-stock/{product_id}/{color_id}/{size_id}',[WishListController::class,'currentStock']);


Route::namespace('App\Http\Controllers\frontend')->group(function () {
    Route::controller(CategoryFEController::class)->group(function () {
        Route::match(['get', 'post'],'/categories/{slug?}','categories');
    });
});



Route::get('auth/facebook', [FacebookController::class, 'facebookpage']);
Route::get('auth/facebook/callback', [FacebookController::class, 'facebookredirect']);
Route::get('auth/google', [GoogleController::class, 'googlepage']);
Route::get('auth/google/callback', [GoogleController::class, 'googleredirect']);

Route::post('change-lang', [LanguageController::class, 'swithcLang']);

require __DIR__.'/auth.php';
