<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SitesModules extends Model
{
    public function sitesId()
    {
        return $this->belongsTo(Site::class);
    }
}
