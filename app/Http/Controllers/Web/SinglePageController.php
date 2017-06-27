<?php

namespace App\Http\Controllers\Web;

use App\Models\Site;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Route;
use Mockery\Exception;


class SinglePageController extends Controller
{
    public static function index($id, $slug)
    {
        if ($id) {
            $site = self::findSiteWithId($id);
            if ($site) {
                $view = self::getTemplate($site->view);
            } else {
                $view = null;
            }
        } else if ($slug){
            $site = self::findSiteWithSlug($slug);
            if ($site) {
                $view = self::getTemplate($site->view);
            } else {
                $view = null;
            }
        } else if (Route::currentRouteName()){
            $site = self::findSiteWithId(Route::currentRouteName());
            $view = self::getTemplate(Route::currentRouteName());
        } else {
            $view = null;
        }

        if ($view && view()->exists($view)) {
            return self::createView($view, $site);
        } else if ($view && !view()->exists($view)) {
            return self::createView(self::getTemplate('site'), $site);
        } else {
            $template = config('custom.project')->template;
            $view = 'errors.404';
            if ($template && view()->exists($template . '.' . $view)) {
                return response()->view($template . '.' . $view, [], 404);
            } else {
                return response()->view($view, [], 404);
            }
        }

    }

    private static function getTemplate ($view)
    {
        return Config::get('custom.project')->template . '.' . $view;
    }

    private static function createView ($template, $site) {
        return view($template, [
            'site' => $site
        ]);
    }

    private static function findSiteWithId($id =null)
    {
        if ($id) {
            try {
                $site =  Site::where([['id', $id],
                    ['enabled', true]])->first();
            } catch (Exception $exception) {
                $site = null;
            }
        } else {
            $site = null;
        }
        return $site;
    }

    private static function findSiteWithSlug($slug =null)
    {
        if ($slug) {
            try {
                $site =  Site::where([['slug', $slug],
                    ['enabled', true]])->first();
            } catch (Exception $exception) {
                $site = null;
            }
        } else {
            $site = null;
        }
        return $site;
    }
}
