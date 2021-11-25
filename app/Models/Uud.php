<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens; 

class Uud extends Model
{
    use HasFactory, Notifiable, HasApiTokens;
    protected $table = "uud";
    protected $fillable = [
        'bab',
        'pasal', 
        'ayat', 
        'isi', 
    ];
}
