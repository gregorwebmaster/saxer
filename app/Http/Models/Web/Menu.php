<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-16 23:43
 *
 * Description: description
 *
 * Last modified: 2017-04-16 23:50
 *
 * Licence MIT
 */

namespace App\Http\Models\Web;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $fillable = [
        'name', 'options'
    ];
}
