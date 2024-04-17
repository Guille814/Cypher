@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Perfil de Usuario') }}</div>

                <div class="card-body">
                    <h1>{{ ucfirst($user->name) }}</h1>
                    <!-- Mostrar la foto de perfil -->
                    <img src="{{ $user->profile_photo_url }}" alt="Foto de perfil">

                    <!-- Mostrar los posts del usuario -->
                    <div class="mt-4">
                        <h3>{{ __('Posts de') }} {{ ucfirst($user->name) }}</h3>
                        @if ($user->posts->isEmpty())
                        <p>{{ __('El usuario no tiene posts todavía.') }}</p>
                        @else
                        <ul>
                            @foreach ($user->posts as $post)
                            <div class="post">
                                <div class="post-header">

                                    @if ($user->profile_photo_url)
                                    <img src="{{ $user->profile_photo_url }}" alt="{{ $user->name }}'s Profile Photo" class="rounded-circle" width="30" height="30">
                                    @else
                                    <img src="{{ asset('images/default-profile.jpg') }}" alt="Default Profile Photo" class="rounded-circle" width="30" height="30">
                                    @endif
                                    <strong>{{ $post->user->name }}</strong>

                                    <span class="post-date">{{ $post->created_at->diffForHumans() }}</span>
                                </div>
                                <div class="post-content">
                                    {{ $post->text }}
                                    <br>
                                    @if ($post->picture)
                                    <img src="{{ asset('storage/' . $post->picture) }}" alt="Imagen del post">
                                    @endif
                                </div>
                                <hr>
                            </div><br>
                            @endforeach
                        </ul>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection