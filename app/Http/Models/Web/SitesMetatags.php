<?php

namespace App\Http\Models\Web;

use Illuminate\Database\Eloquent\Model;

class SitesMetatags extends Model
{
    protected $fillable = [
        'name', 'value', '', 'sites_id'
    ];
}
