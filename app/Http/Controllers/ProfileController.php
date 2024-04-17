<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User;

class ProfileController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('profile');
    }
    public function showUserPosts()
    {
        $user = Auth::user();
        $userPosts = $user->posts()->latest()->get(); // Obtener los posts del usuario autenticado, ordenados por la fecha más reciente
        return view('profile', compact('userPosts'));
    }

    public function show($userId)
    {
        $user = User::findOrFail($userId);
        $user->load('following', 'followers'); // Cargar relaciones de seguimiento y seguidores
        return view('profile.show', ['user' => $user]);
    }

    public function showProfile()
    {
        $user = auth()->user();
        return view('profile', compact('user'));
    }
}
