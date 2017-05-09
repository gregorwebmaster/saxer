<?php
namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class TestController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function show()
    {
         return view('welcome');
    }
}
