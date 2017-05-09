<?php

/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 *
 * Created on 2017-30 13:17
 *
 * Description:
 *
 * Last modified: 2017-05-03 23:15
 *
 * Licence MIT
 */

use App\Http\Models\Admin\Project;
use App\Http\Models\Admin\ProjectsRoute;
use App\Http\Models\Web\Site;


//$project = Project::hostToProject(request()->getHost());
//
//$project_routes = ProjectsRoute::projectRoutes($project->id);
//
//if (is_array($project_routes)) {
//    for ($i = 0; $i < count($project_routes); $i++) {
//        Route::get($project_routes[$i]['path'], $project_routes[$i]['controller'])->name($project_routes[$i]['name']);
//    }
//}
//
//$site_routes = Site::sitesRoutes($project->id);
//
//if (is_array($site_routes)) {
//    for ($i = 0; $i < count($site_routes); $i++) {
//        Route::get($site_routes[$i]['path'], 'Web\SiteController@makeSite')->name($site_routes[$i]['name']);
//    }
//}