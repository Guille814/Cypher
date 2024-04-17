<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function create()
    {
        return view('posts.create');
    }

    // Método para procesar el envío del formulario de creación de posts
    public function store(Request $request)
    {
        // Valida los datos del formulario
        $request->validate([
            'text' => 'required|max:250',
            'picture' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Crea un nuevo post
        $post = new Post();
        $post->user_id = auth()->id();
        $post->text = $request->text;

        // Guarda la imagen si se ha subido
        if ($request->hasFile('picture')) {
            $picturePath = $request->file('picture')->store('uploads', 'public');
            $post->picture = $picturePath;
        }

        $post->save();

        return redirect()->route('home')->with('success', 'Post creado correctamente.');
    }

    public function showUserPosts()
    {
        $userPosts = auth()->user()->posts; // Obtén los posts del usuario autenticado
        return view('posts.show-posts', compact('userPosts'));
    }

    public function edit(Post $post)
    {
        return view('posts.edit', compact('post'));
    }

    public function update(Request $request, Post $post)
    {
        // Valida los datos del formulario
        $request->validate([
            'text' => 'required|max:250',
            'picture' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Actualiza los campos del post con los datos del formulario
        $post->text = $request->text;

        // Actualiza la imagen si se ha subido una nueva
        if ($request->hasFile('picture')) {
            $picturePath = $request->file('picture')->store('uploads', 'public');
            $post->picture = $picturePath;
        }

        // Guarda los cambios en la base de datos
        $post->save();

        return redirect()->route('profile')->with('success', 'Post actualizado correctamente.');
    }

    public function destroy(Post $post)
    {
        $post->delete();
        return redirect()->back()->with('success', 'Post borrado correctamente.');
    }
}
