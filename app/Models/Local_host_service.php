<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Local_host_service extends Model
{
    use HasFactory;

    protected $fillable = [
        'available',
        'local_guide_id',
        'place_id',
        'feature',
        'room_picture',
        'rating',
        'hotel_price',
        'food_price',
        'total_price'
        
    ];

}