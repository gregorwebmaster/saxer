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

    public static function getRoutes($project_id) {
        $db_query = static::where('projects_id', $project_id)->get();
        $routes = [];

        foreach ($db_query as $result) {
            $rule = ['path' => $result->path,
                'controller' => $result->controller,
                'name' => $result->name,
                'view' => $result->view
            ];

            array_push($routes, $rule);
        }
        return $routes;
    }
}
