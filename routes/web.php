<?php

use App\Models\Project;
use App\Models\ProjectsRoute;
use App\Models\Site;

//default laravel routing
//Route::get('/', function () {
//    return \App\Http\Controllers\Web\SinglePageController::index(request()->id, request()->slug);
//});

//Admin routing
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

//openAPI routing
Route::group(['prefix' => 'openapi'], function () {
    Route::get('getprojectsettings/{id}', function ($id) {
        return \App\Http\Controllers\Api\OpenApiController::getProjectSettings($id);
    });
    Route::get('getsitesmodules/{id}', function ($id) {
        return \App\Http\Controllers\Api\OpenApiController::getSiteModules($id);
    });
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

if (Config::get('custom.project')) {
    $project_routes = ProjectsRoute::projectRoutes(Config::get('custom.project')->id);
    checkRoutes($project_routes);
}

function checkRoutes ($routes_array) {

    if (is_array($routes_array)) {
        for ($i = 0; $i < count($routes_array); $i++) {
            if ($routes_array[$i]['controller'] == 'singlepage') {
                Route::get($routes_array[$i]['path'], function () {
                    return \App\Http\Controllers\Web\SinglePageController::index(request()->id, request()->slug);
                })->name($routes_array[$i]['view']);
            } elseif ($routes_array[$i]['controller'] == 'collection') {
                Route::get($routes_array[$i]['path'], function () {
                    return \App\Http\Controllers\Web\CollectionController::index(request()->id, request()->colection);
                })->name($routes_array[$i]['view']);
            } elseif ($routes_array[$i]['controller'] == '' && $routes_array[$i]['view'] !='') {
                Route::get($routes_array[$i]['path'], function () {
                    return \App\Http\Controllers\Web\DefaultController::index();
                })->name($routes_array[$i]['view']);
            }
        }
    }
}

