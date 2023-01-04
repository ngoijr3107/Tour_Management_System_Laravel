<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Model added
use App\Models\Local_guide_services;
use App\Models\User;
use App\Models\Virtual_assistant;


class UltraproPackageController extends Controller
{
    
    public function afterSelectedGuide($placeId,$packageId,$id)
    {

        $guideService=Local_guide_services::where('id',$id)->first();

        $guideProfile=User::where('id',$guideService->user_id)->first();

        $virtualAssistant=Virtual_assistant::all();

        $virtualAssistantPrice=Virtual_assistant::sum('price');

        return view('tourist.regularpackage.detail_info_before_payment');


    }

}
