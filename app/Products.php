<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    //

    protected $hidden = ['created_at','updated_at'];

    public function status()
    {
        
        return $this->hasOne('App\Status','id','status_id'); 
    }

    public function groups()
    {
    
        return  $this->hasMany('App\Group','product_id');
    }
}
