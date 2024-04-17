<div class="card-body">
    @if ($userPosts->isEmpty())
    <p>No tienes posts todavía.</p>
    @else
    <div class="posts-container">
        @foreach ($userPosts as $post)
        <div class="post">
            <div class="post-header">
                @if ($post->user->profile_photo_url)
                <img src="{{ $post->user->profile_photo_url }}" alt="{{ $post->user->name }}'s Profile Photo" class="rounded-circle" width="30" height="30">
                @else
                <img src="{{ asset('images/default-profile.jpg') }}" alt="Default Profile Photo" class="rounded-circle" width="30" height="30">
                @endif
                <strong>{{ $post->user->name }}</strong>
                <span class="post-date">{{ $post->created_at->diffForHumans() }}</span>
            </div>
            <div class="post-content">
                {{ $post->text }} <br>
                @if ($post->picture)
                <img src="{{ asset('storage/' . $post->picture) }}" alt="Imagen del post">
                @endif
            </div>
            <div class="post-actions">
                <a href="{{ route('posts.edit', $post) }}" class="btn btn-primary">Editar</a>
                <form action="{{ route('posts.destroy', $post) }}" method="POST" class="d-inline">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">Borrar</button>
                </form>
            </div>
            <hr>
        </div>
        @endforeach
    </div>
    @endif
</div>