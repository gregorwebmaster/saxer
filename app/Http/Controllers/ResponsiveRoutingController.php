<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-29 21:06
 *
 * Description: description
 *
 * Last modified: 2017-04-30 13:31
 *
 * Licence MIT
 */
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Jenssegers\Agent\Agent as MobileDetector;

class ResponsiveRoutingController extends Controller
{
  private $responsive;

  public function __construct() {
    $this->responsive = new MobileDetector;
  }

  public function getResponsiveView() {
    $route = '';
    if($this->responsive->isTablet()){
      $route = 'tablet';
    } elseif ($this->responsive->isMobile()) {
      $route = 'mobile';
    } else {
      $route = 'desktop';
    }

    return $route;
  }
}
