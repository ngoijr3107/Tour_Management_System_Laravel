<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    protected $fillable = [

        'user_id',
        'local_guide_service_id',
        'local_host_service_id',
        'rating',
        'comment',

    ];

}
