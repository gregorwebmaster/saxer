<?php
/**
 * @author Grzegorz Jozef Jaworski
 * @email webmaster@grzegorzjaworski.de
 * @web http://www.grzegorzjaworski.de
 * 
 * Created on 2017-04-15 00:12
 *
 * Description:
 *
 * Last modified: 2017-04-15 00:12
 *
 * Licence MIT
 */
namespace App\Http\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class ProjectsSettings extends Model
{
    protected $fillable = [
        'name', 'value', 'global', 'projects_id'
    ];

}
