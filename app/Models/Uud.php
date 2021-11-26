<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\Uud;


class Uud extends Model
{
    use HasFactory, Notifiable, HasApiTokens;
    protected $table = "uud";
    protected $fillable = [
        'bab',
        'judul',
        'pasal', 
        'ayat', 
        'isi', 
    ];
    public function pasals()
    {
        return $this->belongsTo(Uud::class, 'uud');
    }
}
