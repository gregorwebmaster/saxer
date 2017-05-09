<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-19 15:47:36
 *
 * Description: Provided access to application settings
 *
 * Last modified: 2017-04-23 03:18:51
 *
 * Licence MIT
 */

namespace App\Helpers;

use App\Http\Models\Admin\Projects_settings as Projects_settings;
use App\Http\Models\Admin\Pages_settings as Pages_settings;

class AppSettingsHelper {
    public $app_settings = [];
    
    public static function global_settings() {
        $db_query = Projects_settings::all()->where('global', 1);
        $global_settings = [];

        foreach ($db_query as $result) {
            $global_settings[$result->name] = $result->value;
        }

        return $global_settings;
    }
    
    public static function project_settings() {
        $db_query = Pages_settings::get()->projects->where('prefix', 'test');
        $project_settings = [];

        foreach ($db_query as $result) {
            $project_settings[$result->name] = $result->value;
        }

        return $project_settings;
    }
    
    public static function page_settings() {
        $db_query = Pages_settings::all()->where('global', 0);
        $page_setting = [];

        foreach ($db_query as $result) {
            $page_setting[$result->name] = $result->value;
        }

        return $page_setting;
    }

}
