<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-17 13:42
 *
 * Description: 
 *
 * Last modified: 2017-04-17 13:59
 *
 * Licence MIT
 */

namespace App\Http\Models\Web;

use Illuminate\Database\Eloquent\Model;

class MenusItem extends Model
{
    protected $fillable = [
        'name', 'destination', 'parents', 'options', 'menu_id'
    ];
}
