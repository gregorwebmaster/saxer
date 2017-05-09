<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-14 19:54
 *
 * Description: 
 *
 * Last modified: 2017-04-14 20:07
 *
 * Licence MIT
 */
namespace App\Http\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $fillable = [
        'name', 'description'
    ];
}
