<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Local_host extends Model
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

    public function local_host_services()
    {
        return $this->hasMany(Local_host::class);
    }



}
