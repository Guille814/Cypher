<form method="POST" action="{{ route('posts.store') }}" enctype="multipart/form-data">
    @csrf

    <div class="form-group">
        <label for="text">Texto del Post</label>
        <textarea class="form-control" id="text" name="text" rows="3" required></textarea>
    </div>

    <div class="form-group">
        <label for="picture">Imagen</label>
        <input type="file" class="form-control-file" id="picture" name="picture">
    </div>

    <button type="submit" class="btn btn-primary">Crear Post</button>
</form>
