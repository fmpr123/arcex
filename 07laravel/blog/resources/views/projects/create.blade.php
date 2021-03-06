@extends('layout')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=form, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Create project</h1>
    <form method="POST" action="/projects">
        {{ csrf_field() }}
        <input type="text" name="title" class="input {{ $errors->has('title') ? 'is-danger' : '' }}" placeholder="Project title" value="{{ old('title') }}" required>
        <textarea name="description" required></textarea>
        <button type="submit">Create Project</button>
    </form>
</body>
</html>