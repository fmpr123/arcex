<?php

namespace App\Http\Controllers;

use App\Project;

class ProjectsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        // $this->middleware('auth')->only(['store', 'update']);
        // $this->middleware('auth')->except(['show']);
    }

    public function index()
    {
        $projects = Project::where('owner_id', auth()->id())->get();
        return view('projects.index', ['projects' => $projects]);
    }

    public function create()
    {
        return view('projects.create');
    }

    public function store()
    {

        $validated = request()->validate([
            'title' => ['required', 'min:1', 'max:255'],
            'description' => 'required'
        ]);
        // dd(auth()->id());
        $validated['owner_id'] = auth()->id();
        Project::create($validated);
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
        $project->title = request('title');
        $project->description = request('description');
        $project->save();
        return redirect('/projects');
    }

    public function destroy($id)
    {
        $project = Project::find($id);
        $project->title = request('title');
        $project->description = request('description');
        $project->delete();
        return redirect('/projects');
    }

    public function showAlt(Project $project)
    {
        return view('projects.show', compact('project'));
    }

    public function show(Project $project)
    {
        $this->authorize('update', $project);
        return view('projects.show', compact('project'));
    }

    public function first()
    {
        $project = Project::all()->first();
        return view('projects.show', compact('project'));
    }

    public function last()
    {
        $project = Project::all()->last();
        return view('projects.show', compact('project'));
    }
}
