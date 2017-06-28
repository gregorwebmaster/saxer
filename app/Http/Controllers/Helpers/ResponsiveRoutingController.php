<?php

namespace App\Http\Controllers\Helpers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Jenssegers\Agent\Agent as MobileDetector;

class ResponsiveRoutingController extends Controller
{
    private $responsive;

    public function __construct()
    {
        $this->responsive = new MobileDetector;
    }

    public function getResponsiveView()
    {
        if ($this->responsive->isTablet()) {
            $device = 'tablet';
        } elseif ($this->responsive->isMobile()) {
            $device = 'mobile';
        } else {
            $device = 'desktop';
        }

        return $device;
    }
}
