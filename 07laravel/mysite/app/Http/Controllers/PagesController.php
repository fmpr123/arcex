<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function layout(){
        $tasks=['go to store','go to market','go to work'];
        return view('layout', [
            'text' => 'ACR',
            'title' => request('title'),
            'tasks'=>$tasks
        ]);
    }

    public function home(){
        return view('welcome');
    }

    public function contact(){
        return view('contact');
    }
}
