<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SitesSettings extends Model
{
    public function sitesId()
    {
        return $this->belongsTo(Site::class);
    }
}
