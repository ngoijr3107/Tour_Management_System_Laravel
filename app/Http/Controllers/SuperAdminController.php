<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Virtual_assistant;
use App\Models\Place;

use Illuminate\Http\Request;
use Gate;

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
 
       $uploadedfile=$req->file('placeImage');
       $placeImage=rand().'.'.$uploadedfile->getClientOriginalExtension();
       $uploadedfile->move(public_path('assets/placeImage'),$placeImage);

       $place=array();

       $place['name']=$placeName;
       $place['address']=$address;
       $place['photo']=$placeImage;

       $addPlace=Place::create($place);

       Session()->flash('success','Place added successfully !');
       return back();

    }


}
