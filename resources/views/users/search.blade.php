<!-- resources/views/users/search.blade.php -->
<form action="{{ route('users.search') }}" method="GET">
    <input type="text" name="query" placeholder="Buscar usuarios...">
    <button type="submit">Buscar</button>
</form>
