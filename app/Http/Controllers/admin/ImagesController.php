<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use DB;

//load model and rename
use App\ImagesModel;

class ImagesController extends Controller
{
  
    public function dashboard(Request $request) {
        if(isset($_POST['submit'])) {
            echo '123';
            $image = $request->file('file');
            $input['image_name'] = time().'.'.$image->getClientOriginalExtension();
            $path = public_path('images');
            $base_url = 'http://localhost/blog/public/images/';
            $image->move($path,$input['image_name']);

        
            $data = [
                    'name'      => $input['image_name'],
                    'url'       => $base_url.$input['image_name'],
                    'created'   => time(),
            ];

            ImagesModel::insert($data);
   
        }

        $data = ImagesModel::loadlist();
        return view('admin.dashboard',['data' => $data]);
    }

}

