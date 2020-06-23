<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class UserModel extends Model
{

  public static function check_login($username,$password) {
      $query = DB::table('user')->orwhere(['username' => $username ,'email' => $username  ])
                                ->where(['password' => $password ]);
      return $query->count();
  }

  public static function check_user_exist($username=null,$email=null) {
      $query = DB::table('user')->orwhere(['username' => $username ,'email' => $email  ]);
      return $query->count();
  }



}
