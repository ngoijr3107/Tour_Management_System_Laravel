<?php

namespace App\Http\Controllers;

//Model added
use App\Models\Local_guide_service;
use App\Models\Local_host_service;


use Illuminate\Http\Request;
use Auth;

class LocalGuideHostController extends Controller
{
    
    public function addService()
    {

        return view('admin.guideHost.addService');


    }
    public function allService()
    {

        $usertype=Auth::user()->usertype;

        if($usertype==1)
        {

            $services=Local_guide_service::where('id',Auth::user()->id)->get();

        }
        else
        {

            $services=Local_host_service::where('id',Auth::user()->id)->get();

        }

        return view('admin.guideHost.allService',['services'=>$services]);


    }


}
