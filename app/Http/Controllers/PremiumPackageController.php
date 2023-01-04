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

        return view('tourist.premiumpackage.detail_info_before_payment',['hostService'=>$hostService,'hostProfile'=>$hostProfile]);


    }


}
