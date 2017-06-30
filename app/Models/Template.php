<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Template extends Model
{
    public function servicesId()
    {
        return $this->belongsTo(Service::class);
    }

}
