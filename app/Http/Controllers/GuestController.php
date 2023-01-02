<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Model added
use App\Models\Place;




class GuestController extends Controller
{

    public function homePage()
    {

        $places = Place::all();


        return view('tourist.index',['places'=>$places]);


    }
    
    public function choosePlace($id)
    {

        return view('tourist.packageSelection');


    }


}
