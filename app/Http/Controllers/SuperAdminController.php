<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Virtual_assistant;

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


}
