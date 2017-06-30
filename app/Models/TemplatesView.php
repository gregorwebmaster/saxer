<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TemplatesView extends Model
{
    public function templatesId()
    {
        return $this->belongsTo(Template::class);
    }
}
