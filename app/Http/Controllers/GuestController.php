<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Model added
use App\Models\User;
use App\Models\Place;
use App\Models\Local_Guide_Service;
use App\Models\Local_Host_Service;



class GuestController extends Controller
{

    public function homePage()
    {

        $places = Place::all();


        return view('tourist.index',['places'=>$places]);


    }
    
    public function choosePlace($id)
    {

        return view('tourist.packageSelection',['placeId'=>$id]);


    }
    public function selectedPackage($placeId,$id)
    {


        //for regular package
        if($id==1)
        {

            $localGuides=User::with('local_guide_services')->where('usertype',1)->get();

            $place=Place::where('id',$placeId)->first();
        
            return view('tourist.regularPackage.guideSelection',['placeId'=>$placeId,'packageId'=>$id,'localGuides'=>$localGuides,'place'=>$place]);

        }
        //for premimum package
        else if($id==2)
        {

            $localHosts=User::with('local_host_services')->where('usertype',2)->get();

            $place=Place::where('id',$placeId)->first();
        
            return view('tourist.premiumPackage.hostSelection',['placeId'=>$placeId,'packageId'=>$id,'localHosts'=>$localHosts,'place'=>$place]);


        }
        //for pro package
        else if($id==3)
        {
         
            $localHosts=User::with('local_host_services')->where('usertype',2)->get();

            $place=Place::where('id',$placeId)->first();
        
            return view('tourist.proPackage.hostSelection',['placeId'=>$placeId,'packageId'=>$id,'localHosts'=>$localHosts,'place'=>$place]);



  
        }
        //for ultra pro package
        else if($id==4)
        {
            $localGuides=User::with('local_guide_services')->where('usertype',1)->get();

            $place=Place::where('id',$placeId)->first();
        
            return view('tourist.ultraproPackage.guideSelection',['placeId'=>$placeId,'packageId'=>$id,'localGuides'=>$localGuides,'place'=>$place]);


        }
        //for invaild package
        else
        {




        }

      


    }


}
