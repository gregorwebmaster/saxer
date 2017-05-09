<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-05-02 23:24
 *
 * Description: default app controller
 *
 * Last modified: 2017-05-02 23:32
 *
 * Licence MIT
 */
namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;

class SiteController extends Controller
{
    public static function makeSite() {
       $name = Route::currentRouteName();
        echo $name;
    }
}
