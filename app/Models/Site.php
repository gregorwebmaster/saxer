<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Site extends Model
{
    public function projectsId()
    {
        return $this->belongsTo(Project::class);
    }

    public function ownerId()
    {
        return $this->belongsTo(User::class);
    }
}
