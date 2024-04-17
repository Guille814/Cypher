<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FollowerController;

Route::get('/', function () {
    return view('auth/login');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/profile', [ProfileController::class,'index'])->name('profile');

// Ruta para mostrar el formulario de creación de posts
Route::get('/posts/create', [PostController::class,'create'])->name('post.create');

// Ruta para procesar el envío del formulario de creación de posts
Route::post('/posts', [PostController::class, 'store'])->name('posts.store');

Route::get('/profile', [ProfileController::class, 'showUserPosts'])->middleware('auth')->name('profile');
Route::get('/users/info-user', [UserController::class, 'show'])->name('user.info');

Route::get('/posts/{post}/edit', [PostController::class, 'edit'])->name('posts.edit');
Route::put('/posts/{post}', [PostController::class, 'update'])->name('posts.update');
Route::delete('/posts/{post}', [PostController::class, 'destroy'])->name('posts.destroy');


Route::get('/users/search', [UserController::class, 'search'])->name('users.search');
Route::get('/users', [UserController::class, 'index'])->name('users.index');
Route::get('/users/{id}', [UserController::class, 'show'])->name('users.show');
Route::put('/users/{id}', [UserController::class, 'update'])->name('users.update');
Route::delete('/users/{id}', [UserController::class, 'destroy'])->name('users.destroy');


Route::get('user/{user}', [UserController::class, 'show'])->name('user.profile');

Route::post('follow/{userToFollow}', [FollowerController::class, 'follow'])->name('follow');
Route::post('unfollow/{userToUnfollow}', [FollowerController::class, 'unfollow'])->name('unfollow');
