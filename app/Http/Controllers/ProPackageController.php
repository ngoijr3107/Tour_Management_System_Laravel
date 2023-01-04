<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Model added
use App\Models\Local_host_service;
use App\Models\User;
use App\Models\Virtual_assistant;


class ProPackageController extends Controller
{
    
    public function afterSelectedHost($placeId,$packageId,$id)
    {

        $hostService=Local_host_service::where('id',$id)->first();

        $hostProfile=User::where('id',$hostService->user_id)->first();

        $virtualAssistant=Virtual_assistant::first();

        $virtualAssistantPrice=Virtual_assistant::sum('price');

        return view('tourist.propackage.detail_info_before_payment',['hostService'=>$hostService,'hostProfile'=>$hostProfile,'virtualAssistant'=>$virtualAssistant,'virtualAssistantPrice'=>$virtualAssistantPrice]);


    }


}
