<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-16 00:36
 *
 * Description:
 *
 * Last modified: 2017-04-16 00:44
 *
 * Licence MIT
 */
namespace App\Http\Models\Web;

use Illuminate\Database\Eloquent\Model;

class SitesModule extends Model
{
    protected $fillable = [
        'name', 'options', 'enabled', 'sites_id'
    ];
}
