<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-14 20:46
 *
 * Description:
 *
 * Last modified: 2017-04-17 19:54
 *
 * Licence MIT
 */
namespace App\Http\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $fillable = [
        'name', 'description', 'domain', 'master_id'
    ];
    
    public static function hostToProject($host) {
        return static::where('domain' , $host)->findOrFail(1);
    }
    
}
