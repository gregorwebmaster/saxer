<?php

use App\Models\Project;
use App\Models\ProjectsRoute;
use App\Models\Site;

//default laravel routing
//Route::get('/', function () {
//    return view('welcome');
//});

//Admin routing
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

try {
    Project::hostToProject(request()->getHost());
} catch (Exception $exception) {
    Config::set('custom.project', FALSE);
}

if (Config::get('custom.project')) {
    try {
       $site_routes = Site::getRoutes(Config::get('custom.project')->id);
    } catch (Exception $exception) {
        $site_routes =  FALSE;
    }
} else {
    $site_routes =  FALSE;
}

if ($site_routes) {
    checkRoutes($site_routes);
}

if (Config::get('custom.project') && !$site_routes) {
    $project_routes = ProjectsRoute::projectRoutes(Config::get('custom.project')->id);
    checkRoutes($project_routes, TRUE);
}

function checkRoutes ($routes_array, $not_found = FALSE) {

    if (is_array($routes_array)) {
        for ($i = 0; $i < count($routes_array); $i++) {
            if ($routes_array[$i]['controller'] == 'singlepage') {
                Route::get($routes_array[$i]['path'], function () {
                    return \App\Http\Controllers\Web\SinglepageController::index(request()->id, request()->view, request()->slug);
                })->name($routes_array[$i]['view']);
            } elseif ($routes_array[$i]['controller'] == 'collection') {
                Route::get($routes_array[$i]['path'], function () {
                    return \App\Http\Controllers\Web\CollectionController::index(request()->id, request()->view, request()->colection);
                })->name($routes_array[$i]['view']);
            } elseif ($routes_array[$i]['controller'] == '' && $routes_array[$i]['view'] !='') {
                Route::get($routes_array[$i]['path'], function () {
                    return \App\Http\Controllers\Web\DefaultController::index();
                })->name($routes_array[$i]['view']);
            } elseif ($not_found) {
                Route::get($routes_array[$i]['path'], function () {
                    return view('error.404');
                })->name('not_found');
            }
        }
    }

}

