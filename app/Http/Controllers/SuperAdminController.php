<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Virtual_assistant;
use App\Models\Place;
use App\Models\Order;
use App\Models\Review;
use App\Models\Local_guide_service;
use App\Models\Local_host_service;

use Illuminate\Http\Request;
use Gate;
use Auth;
use Webp;

class SuperAdminController extends Controller
{
    
    public function guideList()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $guides=User::where('usertype',1)->get();

        return view('admin.superAdmin.guideList',['guides'=>$guides]);

    }
    public function hostList()
    {
        
        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $hosts=User::where('usertype',2)->get();

        return view('admin.superAdmin.hostList',['hosts'=>$hosts]);

    }
    public function touristList()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $tourists=User::where('usertype',0)->get();

        return view('admin.superAdmin.touristList',['tourists'=>$tourists]);

    }
    public function virtualAssistantList()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $virtualAssistant=Virtual_assistant::all();

        return view('admin.superAdmin.virtualAssistantList',['virtualAssistant'=>$virtualAssistant]);

    }
    public function superAdminList()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $superAdmins=User::where('usertype',3)->get();

        return view('admin.superAdmin.superAdminList',['superAdmins'=>$superAdmins]);

    }
    public function addPlace()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        return view('admin.superAdmin.addPlace');

    }
    public function addPlaceProcess(Request $req)
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $placeName=$req->name;
        $address=$req->address;

        $validatedData = $req->validate([

            'name' => ['required', 'unique:places', 'max:255'],
            'address' => ['required'],
            'placeImage' => ['required','mimes:jpeg,jpg,png|max:1000']

        ]);

        //For Image compression, Image upload in webp format
        $convertImageToWebp = Webp::make($req->file('placeImage'));
        $convertImageToWebp->save(public_path('assets/placeImage/'.$placeName.'.webp'));

        /*

            //Image upload in jpg,png format

            $uploadedfile=$req->file('placeImage');
            $placeImage=rand().'.'.$uploadedfile->getClientOriginalExtension();
            $uploadedfile->move(public_path('assets/placeImage'),$placeImage);


        */

        $place=array();

        $place['name']=$placeName;
        $place['address']=$address;
        $place['photo']=$placeName.'.webp';

        $addPlace=Place::create($place);

        Session()->flash('success','Place added successfully !');
        return back();

    }
    public function placeList()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $places=Place::all();

        return view('admin.superAdmin.placeList',['places'=>$places]);

    }
    public function pendingGuideHost()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $pendingGuideHosts=User::where('status','Pending')->where('usertype',2)->orWhere('usertype',1)->where('status','Pending')->get();

        return view('admin.superAdmin.pendingGuideHost',['pendingGuideHosts'=>$pendingGuideHosts]);

    }
    public function approveGuideHost($id)
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $guideHostDetails=User::where('id',$id)->first();

        $guideHost=array();

        $guideHost['status']="Approve";

        $approve=User::where('id',$id)->update($guideHost);

        //semd approval notification mail to guide or host
        $details = [

            'title' => 'Approve Account Email',
            'body' => 'Hi '. $guideHostDetails->name .'! Your account approved by "Gurta Jabo".You are now interacted and provide your service in our system.',

        ];
        
        \Mail::to($guideHostDetails->email)->send(new \App\Mail\ApprovalMail($details));

        Session()->flash('success','Guide or Host approved successfully !');
        return back();

    }
    public function bookingList()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }
        
        $bookingLists=Order::where('status','Success')->orderBy('id', 'desc')->where('tour_status','!=','Cancel')->get();

        return view('admin.superAdmin.bookingList',['bookingLists'=>$bookingLists]);

    }
    public function returnBookingList()
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }
        
        $returnBookingLists=Order::where('status','Success')->orderBy('id', 'desc')->where('tour_status','Cancel')->get();

        return view('admin.superAdmin.returnBookingList',['returnBookingLists'=>$returnBookingLists]);

    }
    public function returnBookingProcess($id)
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        $bookingInformation=Order::where('id',$id)->first();

        $user=User::where('id',$bookingInformation->user_id)->first();

        return view('admin.superAdmin.returnBookingProcess',['id'=>$id,'bookingInformation'=>$bookingInformation,'user'=>$user]);

    }
    public function billGuideHost($id)
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }
        
        $bookingInformation=Order::where('id',$id)->first();

        $getReview=Review::where('order_id',$id)->count();

        $tourEndDate=$bookingInformation->to_date;

        $today=date('Y-m-d');

        $reviewLastDate=date('Y-m-d', strtotime($tourEndDate. ' + 7 days'));

        $review=NULL;

        if($getReview<0 && $reviewLastDate<$today)
        {

            Session()->flash('wrong','user review process remaining !');
            return back();    

        }
        if($getReview>0)
        {

            $review=Review::where('order_id',$id)->first();   

        }

        if($bookingInformation->lg_service_id!=Null)
        {

            $service=Local_guide_service::where('id',$bookingInformation->lg_service_id)->first();

        }
        else if($bookingInformation->lh_service_id!=Null)
        {

            $service=Local_host_service::where('id',$bookingInformation->lh_service_id)->first();


        }
        if($bookingInformation->package_id==3 || $bookingInformation->package_id==4)
        {

            $virtualAssistantPrice=Virtual_assistant::sum('price');

            $totalPrice=$bookingInformation->amount-$virtualAssistantPrice;

        }
        else
        {

            $totalPrice=$bookingInformation->amount;

        }

        $serviceHolder=User::where('id',$service->user_id)->first();

        return view('admin.superAdmin.billGenerate',['totalPrice'=>$totalPrice,'getReview'=>$getReview,'id'=>$id,'service'=>$service,'bookingInformation'=>$bookingInformation,'review'=>$review,'serviceHolder'=>$serviceHolder]);

    }
    public function paidGuideHost(Request $req,$id)
    {

        if(!(Gate::allows('isSuperAdmin')))
        {
            return view('errorPage.404');
        }

        if($req->payableAmount<0 || $req->payableAmount>100)
        {

            Session()->flash('wrong','Invalid Payable Amount !');
            return back();   

        }

        $bookingInformation=Order::where('id',$id)->first();

        if($bookingInformation->guide_host_tranx_id!=Null)
        {

            Session()->flash('wrong','Already Paid !');
            return back();

        }

        $payment=array();

        $paidAmount=($req->payableAmount*$req->totalAmount)/100;

        $payment['pay_guide_host']=$paidAmount;

        $payment['guide_host_tranx_id']=$req->transactionNo;

        Order::where('id',$id)->update($payment);

        //payment notification mail to guide or host
        $details = [

            'title' => 'Service Holder Payment Email',
            'body' => 'You get '.$paidAmount. ' Tk for your service. Tnx No - '.$req->transactionNo,

        ];

        if($bookingInformation->lg_service_id!=Null)
        {

            $serviceHolderEmail=User::where('id',$bookingInformation->lg_service_id)->value('email');

        }
        else if($bookingInformation->lh_service_id!=Null)
        {

            $serviceHolderEmail=User::where('id',$bookingInformation->lh_service_id)->value('email');


        }
        
        \Mail::to($serviceHolderEmail)->send(new \App\Mail\ServiceHolderPaymentMail($details));

        Session()->flash('success','Payment added successfully !');
        return back();
        

    }


}
