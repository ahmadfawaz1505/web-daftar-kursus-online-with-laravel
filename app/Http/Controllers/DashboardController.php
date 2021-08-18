<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Kelas;
use \App\Pendaftaran;
use \App\User;

class DashboardController extends Controller
{
    public function index()
    {
        $user_id = \Auth::user()->id;
        $total = Pendaftaran::all()->count();
        $kelas = Kelas::all()->count();
        $cek = Pendaftaran::where('users', $user_id)->count();

        if($cek < 1){
            $pesan = 'Harap Melengkapi Pendaftaran Terlebih Dahulu';
        }else {
            $pesan = 'Pendaftaran Anda Sudah Dilengkapi...Terimakasih';
        }

        $cek_verifikasi = User::find($user_id);
        if($cek_verifikasi->is_verifikasi == 1){
            $status = 'Sudah Di Verifikasi';
        }else {
            $status = 'Belum Di Verifikasi';
        }
        return view('dashboard.beranda.index', compact('pesan','total','kelas','status'));
    }
}
