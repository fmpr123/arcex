<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $fillable = [
        'title', 'description', 'owner_id'
    ];
    
    public function tasks()
    {
        return $this->hasMany(Task::class);
        /* examples:
        return $this->belongsTo;
        return $this->hasManyThrough;
        return $this->morphMany;
        */
    }

    public function addTask($task)
    {
        $this->tasks()->create($task);
        // adiciona o project_id automaticamente
    }
}
