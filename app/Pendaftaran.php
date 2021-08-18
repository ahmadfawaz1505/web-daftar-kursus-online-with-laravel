<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pendaftaran extends Model
{
    protected $table = 'pendaftaran';

    public function getFoto()
    {
        return asset('images/'.$this->foto);
    }

    public function getBukti()
    {
        return asset('pembayaran/'.$this->pembayaran);
    }

    public function user_r()
    {
        return $this->belongsTo('App\User','users');
    }

    public function kelas_r()
    {
        return $this->belongsTo('App\Kelas', 'kelas_id');
    }

    
}

