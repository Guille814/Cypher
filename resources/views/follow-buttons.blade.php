 <!-- Mostrar el botón adecuado según si ya se sigue al usuario o no -->
 @if (auth()->user()->isFollowing($user))
 <!-- Botón para dejar de seguir -->
 <form action="{{ route('unfollow', $user) }}" method="POST">
     @csrf
     @method('POST')
     <button type="submit">Dejar de seguir</button>
 </form>
 @else
 <!-- Botón para seguir -->
 <form action="{{ route('follow', $user) }}" method="POST">
     @csrf
     @method('POST')
     <button type="submit">Seguir</button>
 </form>
 @endif