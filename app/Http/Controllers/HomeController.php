<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Model added
use App\Models\Order;

use Auth;

class HomeController extends Controller
{
    
    public function viewHistory()
    {

        $histories=Order::with('place')->where('user_id',Auth::user()->id)->where('status','=','Success')->get();

        return view('tourist.history',['histories'=>$histories]);


    }


}
