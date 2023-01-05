<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Model added
use App\Models\Local_host_service;
use App\Models\User;


class PremiumPackageController extends Controller
{
    
    public function afterSelectedHost($placeId,$packageId,$id)
    {

        $hostService=Local_host_service::where('id',$id)->first();

        $hostProfile=User::where('id',$hostService->user_id)->first();

        return view('tourist.premiumpackage.detail_info_before_payment',['placeId'=>$placeId,'packageId'=>$packageId,'guideServiceId'=>$id,'hostService'=>$hostService,'hostProfile'=>$hostProfile]);


    }
    public function billGenerate($placeId,$packageId,$hostServiceId,Request $req)
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


        $amountOfDay=(strtotime($to)-strtotime($from))/(24*60*60)+1;

        $hostBill=Local_host_service::where('id',$hostServiceId)->value('total_price');

        $totalBill=$hostBill*$amountOfDay*$amountOfPerson;
        
        return view('tourist.premiumpackage.billGenerate',['amountOfDay'=>$amountOfDay,'amountOfPerson'=>$amountOfPerson,'hostBill'=>$hostBill,'totalBill'=>$totalBill]);


    }



}
