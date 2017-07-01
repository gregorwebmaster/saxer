<?php

namespace App\Http\Controllers\Api;

use App\Models\ProjectsSetting;
use App\Models\SitesModules;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OpenApiController extends Controller
{
    public static function getProjectSettings($id)
    {
        $dane = ProjectsSetting::where('projects_id', $id)->get();
        $results = [];
        foreach ($dane as $result) {
            $value = (json_decode($result->value)) ? json_decode($result->value): $result->value;
            array_push($results, [$result->name => $value]);
        }
        return $results;
    }

    public static function getSiteModules($id)
    {
        $dane = SitesModules::where('sites_id', $id)
            ->where('enabled', true)
            ->orderBy('order')
            ->get();
        $results = [];
        foreach ($dane as $result) {
            array_push($results, [
                'name' => $result->name,
                'order' => $result->order,
                'options' => json_decode($result->options)
            ]);
        }
        return $results;
    }
}
