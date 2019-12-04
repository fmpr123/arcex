@extends('articles.layout')

@section('content')
    <h1>Create a new Article</h1>

    <form method="POST" action="/articles">
        {{ csrf_field() }}
        <div>
        <input type="text" name="title" class="input {{ $errors->has('title') ? 'is-danger' : '' }}" placeholder="Article title" value="{{ old('title') }}" required>
        </div>

        <div>
            <textarea name="content" class="input" placeholder="Article content" required></textarea>
        </div>

        <div>
            <button type="submit">Create Article</button>
        </div>

        @if ($errors->any())
        <div class="notification is-danger">
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif
    </form>
@endsection
