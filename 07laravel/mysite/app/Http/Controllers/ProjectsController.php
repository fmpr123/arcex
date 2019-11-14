<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Project;

class ProjectsController extends Controller
{
    public function index()
    {
        $projects = Project::all();
        return view('projects.index', ['projects' => $projects]);
        //return $projects; retorna json com todos os dados
    }

    public function create()
    {
        return view('projects.create');

    }

    public function store()
    {
        Project::create([
            'title' => request('title'),
            'description' => request('description')
            ]);
            return redirect('/projects');
    }
    
    public function edit($id)
    {
        $project = Project::findOrFail($id);
        return view('projects.edit', compact('project'));
    }

    public function update($id)
    {
        $project = Project::find($id);
        $project->title=request('title');
        $project->description=request('description');
        $project->save();
        return redirect('/projects');

    }

    public function destroy($id)
    {
        $project = Project::find($id);
        $project->title=request('title');
        $project->description=request('description');
        $project->delete();
        return redirect('/projects');
    }

    public function showAlt(Project $project)
    {
        return view('projects.show', compact('project')); 
        #['project' => $project];
    }

    public function show($id){
        $project = Project::findOrFail($id);
        return view('projects.show',compact('project'));
    }
}
