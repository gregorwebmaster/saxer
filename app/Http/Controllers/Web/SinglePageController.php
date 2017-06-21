<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SinglePageController extends Controller
{
    public static function index($id, $view)
    {

        if ($id) {
            $site = self::findSiteWithId($id);
            if ($site) {
                $template = self::getTemplate($site->view);
            } else {
                $template = null;
            }

        } else if ($view){
            $site = self::findSiteWithView($view);
            $template = self::getTemplate($view);
        } else if (Route::currentRouteName()){
            $site = self::findSiteWithId(Route::currentRouteName());
            $template = self::getTemplate(Route::currentRouteName());
        } else {
            $template = null;
        }

        if ($template){
            return self::createView($template, $site);
        } else {
            return 'not found';
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

    private static function findSiteWithView($view =null)
    {
        if ($view) {
            try {
                $site =  Site::where([['view', $view],
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
