<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    protected $table = 'kelas';

    protected $fillable = [
        'hari','jam','harga'
    ];

    public function kursus_r()
    {
        return $this->belongsTo('App\Kursus','kursus_id');
    }

    public function pendaftaran_r()
    {
        return $this->hasMany(Pendaftaran::class);
    }
}
