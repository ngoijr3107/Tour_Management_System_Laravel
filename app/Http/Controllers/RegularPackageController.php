<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Model added
use App\Models\Local_guide_service;
use App\Models\User;


class RegularPackageController extends Controller
{
    
    public function afterSelectedGuide($placeId,$packageId,$id)
    {

        $guideService=Local_guide_service::where('id',$id)->first();

        $guideProfile=User::where('id',$guideService->user_id)->first();

        return view('tourist.regularpackage.detail_info_before_payment',['placeId'=>$placeId,'packageId'=>$packageId,'guideServiceId'=>$id,'guideService'=>$guideService,'guideProfile'=>$guideProfile]);


    }
    public function billGenerate($placeId,$packageId,$guideServiceId,Request $req)
    {

        $today=date("Y-m-d");

        $from=$req->from;
        $to=$req->to;
        $amountOfPerson=$req->person;

        //Validate date
        if($from<$today || $to<$today || $from>$to)
        {

            Session()->flash('wrongInformation','Invalid date !');
            return back();

        }

        return view('tourist.regularpackage.billGenerate');


    }



}
