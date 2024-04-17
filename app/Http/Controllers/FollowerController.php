<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Follower;

class FollowerController extends Controller
{
    public function follow(User $userToFollow)
{
    $currentUser = auth()->user();

    // Verificar si el usuario actual ya sigue al usuario al que intenta seguir
    if ($currentUser->isFollowing($userToFollow)) {
        return back()->with('error', 'Ya sigues a ' . $userToFollow->name);
    }

    // Crear la relación de seguimiento
    $follower = new Follower();
    $follower->user_id = $currentUser->id;
    $follower->follower_id = $userToFollow->id;
    $follower->save();

    return back()->with('success', 'Ahora sigues a ' . $userToFollow->name);
}



    public function unfollow(User $userToUnfollow)
    {
        auth()->user()->following()->detach($userToUnfollow->id);
        return back()->with('success', 'Dejaste de seguir a ' . $userToUnfollow->name);
    }
}
