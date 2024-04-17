@extends('layouts.app')

@section('content')
<!-- Ejemplo de cómo agregar el formulario de búsqueda en una vista -->

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                @include('users.user-info')
                <div class="card mt-4">
                    <div class="card-header">{{ __('Crear Post') }}</div>
                    <div class="card-body">
                        @include('posts.create') <!-- Incluye el formulario de creación de posts -->
                    </div>
                </div>
                <div class="card mt-4">
                    <div class="card-header">{{ __('Tus Posts') }}</div>
                    @include('posts.posts')
                </div>
            </div>
        </div>
    </div>
</div>
@endsection