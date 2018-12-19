<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    //
    protected $table = 'groups';

    public function products()
    {
    
        return  $this->hasMany('App\Products','id','relation_product_id');
    }
}
