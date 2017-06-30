<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProjectsRoute extends Model
{
    protected $fillable = [
        'projects_id', 'path', 'name', 'controller', 'view'
    ];


    public function projectsId()
    {
        return $this->belongsTo(Project::class);
    }

    public static function projectRoutes($project_id) {
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
