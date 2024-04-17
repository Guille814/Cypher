@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Editar Post') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('posts.update', $post->id) }}" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="form-group">
                            <label for="text">Texto del Post</label>
                            <textarea class="form-control" id="text" name="text" rows="3" required>{{ $post->text }}</textarea>
                        </div>

                        <div class="form-group">
                            <label for="picture">Imagen</label>
                            <input type="file" class="form-control-file" id="picture" name="picture">
                        </div>

                        <button type="submit" class="btn btn-primary">Actualizar Post</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
