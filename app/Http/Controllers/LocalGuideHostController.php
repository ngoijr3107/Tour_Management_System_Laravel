<?php

namespace App\Http\Controllers;

//Model added
use App\Models\Local_guide_service;
use App\Models\Local_host_service;


use Illuminate\Http\Request;
use Auth;
use Gate;

class LocalGuideHostController extends Controller
{
    
    public function addService()
    {

        if(!(Gate::allows('isLocalGuide') ||  Gate::allows('isLocalHost')))
        {
            return view('errorPage.404');
        }

        return view('admin.guideHost.addService');


    }
    public function allService()
    {

        if(!(Gate::allows('isLocalGuide') ||  Gate::allows('isLocalHost')))
        {
           return view('errorPage.404');
        }

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
