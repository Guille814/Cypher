<div class="card-body text-center">
    <!-- Foto de perfil -->
    <div class="profile-picture-container">
        <img src="{{ Auth::user()->profile_photo_url }}" alt="{{ Auth::user()->name }} PPic" class="rounded-circle" width="250" height="250">
    </div>

    <!-- Nombre de usuario -->
    <h1 class="profile-username">{{ ucfirst(Auth::user()->name) }}</h1>

    <!-- Contador de seguidores y seguidos -->
    <div class="followers-following">
        <span style="display: inline-block; text-align: center; margin-right:40px">
            <p class="followers-count">{{ Auth::user()->followers()->count() }}</p>
            <p class="followers-label">Seguidores</p>
        </span>
        <span style="display: inline-block; text-align: center;">
            <p class="following-count">{{ Auth::user()->following()->count() }}</p>
            <p class="following-label">Seguidos</p>
        </span>
    </div>

</div>