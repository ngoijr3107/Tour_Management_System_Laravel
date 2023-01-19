<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Model added
use App\Models\Order;
use App\Models\Local_guide_service;
use App\Models\Local_host_service;
use App\Models\User;
use App\Models\Virtual_assistant;
use App\Models\Place;

use Symfony\Component\Process\Exception\ProcessFailedException;
use Symfony\Component\Process\Process;

use Auth;
use PDF;
use Redirect;

class HomeController extends Controller
{
    
    public function viewHistory()
    {

        $histories=Order::with('place')->where('user_id',Auth::user()->id)->where('status','=','Success')->orderBy('id', 'desc')->simplePaginate(5);;

        return view('tourist.history',['histories'=>$histories]);


    }
    public function paymentCopyDownload($id)
    {

        $history=Order::where('id',$id)->first();

        //Get session for view in pdf
        $totalBill=$history->amount;
        $from=$history->from_date;
        $to=$history->to_date;
        $amountOfDay=$history->amount_of_day;
        $amountOfPerson=$history->amout_of_person;
        $packageId=$history->package_id;
        $lgServiceId=$history->lg_service_id;
        $lhServiceId=$history->lh_service_id;
        $paymentDate=$history->payment_date;
        $tran_id=$history->transaction_id;
  

        //local guide
        if($lgServiceId !=null)
        {
  
            $serviceDetails=Local_guide_service::where('id',$lgServiceId)->first();
   
            $placeDetails=Place::where('id',$serviceDetails->place_id)->first();
  
            $serviceHolderProfile=User::where('id',$serviceDetails->user_id)->first();
  
  
        }
        //local host
        else if($lhServiceId !=null)
        {
  
            $serviceDetails=Local_host_service::where('id',$lhServiceId)->first();
              
            $placeDetails=Place::where('id',$serviceDetails->place_id)->first();
  
            $serviceHolderProfile=User::where('id',$serviceDetails->user_id)->first();
  
  
        }
  
        if($packageId==1)
        {
  
            $packageName="Regular Package";
  
        }
        else if($packageId==2)
        {
  
                  
            $packageName="Premium Package";
  
  
        }
        else if($packageId==3)
        {
  
                  
            $packageName="Pro Package";
  
  
        }
        else if($packageId==4)
        {
  
                  
            $packageName="Ultrapro Package";
  
  
        }
  
        $virtualAssistantPrice=Virtual_assistant::sum('price');
  
        $today=$paymentDate;
  
        $pdf = PDF::loadView('tourist.SuccesfullPaymentCopy', compact('virtualAssistantPrice','packageId','packageName','today', 'tran_id','from','to','amountOfDay','amountOfPerson','serviceHolderProfile','serviceDetails','placeDetails','totalBill'));
  
        return $pdf->download('Payment Copy.pdf',array("Attachment" => false));
  


    }

    public function afterLogin()
    {

        $usertype=Auth::user()->usertype;

        if($usertype==0)
        {

            return redirect()->intended();

        }
        else
        {

            $today=date('F d, Y');

            return view('admin.dashboard',['usertype'=>$usertype,'today'=>$today]);


        }


    }
    public function reviewPage($id)
    {

        $orderInformation=Order::where('id',$id)->first();

        if(Auth::user()->id!=$orderInformation->user_id)
        {
            return view('errorPage.404');
        }

        return view('tourist.reviewPage',['id'=>$id]);

    }

}
