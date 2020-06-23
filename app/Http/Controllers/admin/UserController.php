<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use DB;

//load model and rename
use App\UserModel;

class UserController extends Controller
{
    
    public function login(Request $request) {
        $data ='';
        if(isset($_POST['submit'])) {

            $input = $request->all();

            $rules = array(
                'username' => 'required',
                'password' => 'required',
            );
            $messages = array(
                'username.required' => "Username không được rỗng",
                'password.required' => "Password không được rỗng",
            );
            
            $validator = Validator::make($input, $rules, $messages);
            //check validator       
            if($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }
          
            $username = $request->input('username');
            $password = md5($request->input('password'));
    
            $user = UserModel::check_login($username,$password);
            
            if($user > 0 ) {
                setcookie('isLogin', 1, time() + (600), "/");
                return redirect('http://localhost/blog/public/dashboard.html');
            } else {
                $data = "Thông tin đăng nhập sai";
            }
        }
         return view('admin.login',['msg' => $data]);
    }

    public function register(Request $request) {
        $data ='';
        if(isset($_POST['submit'])) {
            $input = $request->all();

            $rules = array(
                'username' => 'required',
                'email'    => 'required|email',
                'password' => 'required',
            );
            $messages = array(
                'username.required' => "Username không được rỗng",
                'email.required'    => "Email không được rỗng",
                'password.required' => "Password không được rỗng",
                'email.email'       => "Email không đúng định dạng",
            );
            
            $validator = Validator::make($input, $rules, $messages);
            if($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            } else {
                
                if($request->input('password') != $request->input('re_password')) {
                    $data = "Mật khẩu không trùng khớp";
                }
                
                $username = $request->input('username');
                $email = $request->input('email');
                $check_user = UserModel::check_user_exist($username,$email);

                if($check_user>0) {
                    $data = "Username or email đã tồn tại";
                } else {
                    $data = [
                        'email'      =>$email,
                        'username'   =>$username,
                        'password'   =>md5($request->input('password')),
                        'phone'      =>$request->input('phone'),
                        'address'    =>$request->input('address'),
                        'level'      =>0,
                    ];
                    DB::table('user')->insert($data);
                    $data = "Đăng ký tài khoản thành công";
                }
            }
        }
        return view('admin.register',['msg' => $data]);
    }

    public function logout() {
        setcookie('isLogin', 1, time() - (600), "/");
    }


}

