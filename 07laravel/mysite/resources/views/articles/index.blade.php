@extends('articles.layout')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Article</title>
</head>
<body>
    <h1>Articles</h1>
    <ul>
        @foreach ($articles as $article)
            <li><a href="articles/{{ $article->id }}">{{ $article->title }}</a></li>
        @endforeach
    </ul>
    <button type="submit" onclick="window.location='./articles/create'">Add Article</button>
</body>
</html>