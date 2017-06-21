<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Route extends Model
{

    protected $fillable = [
        'projects_id', 'routes_roles_id'
    ];


    public function projectsId()
    {
        return $this->belongsTo(Project::class);
    }

    public static function projectRoutes($project_id) {
        $db_query = static::where('projects_id', $project_id)->get();
        $routes = [];

        foreach ($db_query as $result) {
            $routes_role = RoutesRole::where('id', $result->routes_roles_id)->firstOrFail();

            if ($routes_role) {
                $rule = ['path' => $result->path,
                    'controller' => $routes_role->controller,
                    'name' => $routes_role->name
                ];

                array_push($routes, $rule);
            }
        }
        return $routes;
    }
}
