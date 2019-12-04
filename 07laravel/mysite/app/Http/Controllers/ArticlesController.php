<?php

namespace App\Http\Controllers;

use App\Article;

class ArticlesController extends Controller
{
    public function index()
    {
        $articles = Article::all();
        return view('articles.index', ['articles' => $articles]);
    }

    public function create()
    {
        return view('articles.create');
    }

    public function store()
    {
        $validated = request()->validate([
            'title' => ['required', 'min:3', 'max:255'],
            'content' => 'required'
        ]);

        $article = Article::create($validated);
        if (request('featured') == 'on') {
            $article->featured = 1;
            $article->save();
        }
        return redirect('/articles');
    }
    
    public function show($id){
        $article = Article::findOrFail($id);
        return view('articles.show',compact('article'));
    }


    public function edit($id)
    {
        $article = Article::findOrFail($id);
        return view('articles.edit', compact('article'));
    }
    
    public function update($id)
    {
        $article = Article::find($id);
        $article->title=request('title');
        $article->content=request('content');
        $article->save();
        return redirect('/articles');
    }
}
