<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GuestController extends Controller
{

    public function homePage()
    {


        return view('tourist.index');


    }
    
    public function choosePlace()
    {

        return view('tourist.packageSelection');


    }


}
