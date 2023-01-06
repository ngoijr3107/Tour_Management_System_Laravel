<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    use HasFactory;

    protected $fillable = ['name','email','phone','amount','address','status','transaction_id','currency'];

    public function place()
    {
        return $this->belongsTo('App\Models\Place');
    }

}
