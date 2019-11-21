@extends('layout')

@section('content')
    <h1>Create a new Project</h1>

    <form method="POST" action="/projects">
        {{ csrf_field() }}
        <div>
        <input type="text" name="title" class="input {{ $errors->has('title') ? 'is-danger' : '' }}" placeholder="Project title" value="{{ old('title') }}" required>
        </div>

        <div>
            <textarea name="description" class="input" placeholder="Project description" required></textarea>
        </div>

        <div>
            <button type="submit">Create Project</button>
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
