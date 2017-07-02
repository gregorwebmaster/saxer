<?php

namespace App\Http\Controllers\Helpers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Jenssegers\Agent\Agent as MobileDetector;

class ResponsiveRoutingController extends Controller
{

    public static function getResponsiveView()
    {
        $responsive = new MobileDetector;

        if ($responsive->isTablet()) {
            $device = 'tablet';
        } elseif ($responsive->isMobile()) {
            $device = 'mobile';
        } else {
            $device = 'desktop';
        }

        return $device;
    }
}
