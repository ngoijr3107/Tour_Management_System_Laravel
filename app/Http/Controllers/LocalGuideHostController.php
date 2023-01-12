<?php

namespace App\Http\Controllers;

//Model added
use App\Models\Local_guide_service;
use App\Models\Local_host_service;
use App\Models\Place;


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

        if(Auth::user()->status=="Pending")
        {

            return view('errorPage.404');

        }

        $places=Place::all();


        return view('admin.guideHost.addService',['places'=>$places]);


    }
    public function allService()
    {

        if(!(Gate::allows('isLocalGuide') ||  Gate::allows('isLocalHost')))
        {
           return view('errorPage.404');
        }

        if(Auth::user()->status=="Pending")
        {

            return view('errorPage.404');

        }



        $usertype=Auth::user()->usertype;

        if($usertype==1)
        {

            $services=Local_guide_service::where('user_id',Auth::user()->id)->get();

        }
        else
        {

            $services=Local_host_service::where('user_id',Auth::user()->id)->get();

        }

        return view('admin.guideHost.allService',['services'=>$services]);


    }
    public function addServiceProcess(Request $req)
    {

        if(!(Gate::allows('isLocalGuide') ||  Gate::allows('isLocalHost')))
        {
           return view('errorPage.404');
        }

        if(Auth::user()->status=="Pending")
        {

            return view('errorPage.404');

        }


        $serviceName=$req->serviceName;
        $hotelName=$req->hotelName;
        $roomType=$req->roomType;
        $hotelPrice=$req->hotelPrice;
        $available=$req->available;
        $userId=Auth::user()->id;
        $placeId=$req->placeId;
        $feature=$req->feature;
        $serviceCharge=$req->serviceCharge;
        $foodItem=$req->foodItem;
        $foodPrice=$req->foodPrice;
        $roomPrice=$req->roomPrice;
        $roomPicture=$req->roomImage;
        $foodPicture=$req->foodImage;


        $service=array();

        if($serviceCharge<0 || $hotelPrice<0 || $roomPrice<0 || $foodPrice<0)
        {

            Session()->flash('wrongInformation','Invaild price !');
            return back();


        }

        $service['service_name']=$serviceName;
        $service['available']=$available;
        $service['user_id']=$userId;
        $service['place_id']=$placeId;
        $service['feature']=$feature;
        $service['food_item']=$foodItem;
        $service['food_price']=$foodPrice;


        if(Auth::user()->usertype==1)
        {

            $totalPrice=$serviceCharge+$hotelPrice+$foodPrice;


        }
        else
        {

            $totalPrice=$roomPrice+$foodPrice;


        }

        dd($service);

    }
   

}
