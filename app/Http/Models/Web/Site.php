<?php

/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-16 00:28
 *
 * Description:
 *
 * Last modified: 2017-04-30 12:45
 *
 * Licence MIT
 */

namespace App\Http\Models\Web;

use Illuminate\Database\Eloquent\Model;

class Site extends Model {

    protected $fillable = [
        'name', 'path', 'aliases', 'options', 'pages_id'
    ];
    
    

    public static function sitesRoutes($project_id) {
        $db_query = static::where('projects_id', $project_id)->get();
        $routes = [];

        foreach ($db_query as $result) {
            $site_routes = json_decode($result->path);
            foreach ($site_routes as $route) {
                array_push($routes, [
                    'path' => $route,
                    'name' => $result->name
                ]);
            }
        }

        return $routes;
    }

}
