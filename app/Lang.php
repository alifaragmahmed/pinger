<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lang extends Model
{

    public static $lang = "ar";


    public static function getLang() {
        if (session('locale')) {
            $lang = session('locale');
        } else {
            $lang = Setting::find(7)->value;
            session(["locale" => $lang]);
        }
        return $lang;
    }
}
