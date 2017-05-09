<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-05-01 18:44
 *
 * Description:
 *
 * Last modified: 2017-05-04 00:01
 *
 * Licence MIT
 */
namespace App\Http\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Route extends Model
{
    
    protected $fillable = [
        'name', 'controller'
    ];
    
    public function returnController(){
        return $this->belongsTo('Projects_route', 'foreign_key');
    }
}
