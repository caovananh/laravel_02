<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class ImagesModel extends Model
{

    public static function insert($data) {
        DB::table('images')->insert($data); 
    }

    public static function loadlist() {
        $imageList = DB::table('images')->select();
        return $imageList->get();
    }
    



}
