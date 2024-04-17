@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card-body">
                @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
                @endif
            </div>
            <div class="card mt-4">
                <div class="card-header">{{ __('Crear Post') }}</div>

                <div class="card-body">
                    @include('posts.create') <!-- Incluye el formulario de creación de posts -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection