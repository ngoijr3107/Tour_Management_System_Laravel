<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Local_guide extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'date_of_birth',
        'nid',
        'photo',
        'password',
    ];

    public function local_guide_services()
    {
        return $this->hasMany(Local_guide::class);
    }



}
