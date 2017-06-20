<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProjectsSetting extends Model
{
    public function projectsId()
    {
        return $this->belongsTo(Project::class);
    }
}
