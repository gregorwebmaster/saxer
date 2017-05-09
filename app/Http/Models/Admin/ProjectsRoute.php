<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-05-01 23:38
 *
 * Description:
 *
 * Last modified: 2017-05-03 23:05
 *
 * Licence MIT
 */

namespace App\Http\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class ProjectsRoute extends Model {

    protected $fillable = [
        'path', 'projects_id', 'routes_roles_id'
    ];

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
