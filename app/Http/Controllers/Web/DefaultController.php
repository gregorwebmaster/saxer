<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-29 22:06
 *
 * Description: default app controller
 *
 * Last modified: 2017-04-30 01:28
 *
 * Licence MIT
 */

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\ResponsiveRoutingController as ResponsiveRoutingController;

class DefaultController extends Controller {

    private $responsivePath;

    public function __construct() {
        $responsiveController = new ResponsiveRoutingController;
        $this->responsivePath = $responsiveController->getResponsiveView();
    }

    public function index() {
        $name = Route::currentRouteName();
        echo $name;
        return view('default_' . $this->responsivePath);
    }

    public function test($content = null) {
        if ($content) {
            return $content;
        } else {
            return 'ala ma asa';
        }
    }

}
