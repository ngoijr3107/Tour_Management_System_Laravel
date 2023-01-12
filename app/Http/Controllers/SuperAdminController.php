<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Virtual_assistant;

use Illuminate\Http\Request;

class SuperAdminController extends Controller
{
    
    public function guideList()
    {

        $guides=User::where('usertype',1)->get();

        return view('admin.superAdmin.guideList',['guides'=>$guides]);

    }
    public function hostList()
    {

        $hosts=User::where('usertype',2)->get();

        return view('admin.superAdmin.hostList',['hosts'=>$hosts]);

    }
    public function touristList()
    {

        $tourists=User::where('usertype',0)->get();

        return view('admin.superAdmin.touristList',['tourists'=>$tourists]);

    }
    public function virtualAssistantList()
    {

        $virtualAssistant=Virtual_assistant::all();

        return view('admin.superAdmin.virtualAssistantList',['virtualAssistant'=>$virtualAssistant]);

    }
    public function superAdminList()
    {

        $superAdmins=User::where('usertype',0)->get();

        return view('admin.superAdmin.superAdminList',['superAdmins'=>$superAdmins]);

    }


}
