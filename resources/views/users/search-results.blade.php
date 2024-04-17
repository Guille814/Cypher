@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Resultados de la búsqueda') }}</div>

                <div class="card-body">
                    @if ($users->isEmpty())
                    <p>No se encontraron usuarios.</p>
                    @else
                    <ul class="list-group">
                        @foreach ($users as $user)
                        <li class="list-group-item">
                            @if ($user->profile_photo_url)
                            <img src="{{ $user->profile_photo_url }}" alt="{{ $user->name }}'s Profile Photo" class="rounded-circle" width="30" height="30">
                            @else
                            <img src="{{ asset('images/default-profile.jpg') }}" alt="Default Profile Photo" class="rounded-circle" width="30" height="30">
                            @endif
                            <a href="{{ route('user.profile', $user) }}">{{ $user->name }}</a>

                            <!-- Verificar si el usuario actual ya sigue a este usuario -->
                            @if (auth()->user()->isFollowing($user))
                            <form action="{{ route('unfollow', $user) }}" method="POST" class="d-inline">
                                @csrf
                                @method('POST')
                                <button type="submit" class="btn btn-danger">Dejar de seguir</button>
                            </form>
                            @else
                            <form action="{{ route('follow', $user) }}" method="POST" class="d-inline">
                                @csrf
                                @method('POST')
                                <button type="submit" class="btn btn-primary">Seguir</button>
                            </form>
                            @endif
                        </li>
                        @endforeach


                    </ul>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection