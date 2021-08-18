<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Pendaftaran;
use \App\Kelas;

class PendaftaranController extends Controller
{
    public function index()
    {
        $user_id = \Auth::user()->id;
        $data = Pendaftaran::where('users', $user_id)->first();
        $cek = Pendaftaran::where('users', $user_id)->count();
        $kursus = Kelas::all();

        return view('dashboard.beranda.pendaftaran', compact('data', 'cek', 'kursus'));
    }

    public function store(Request $request, $id)
    {
        $this->validate($request, [
            'no_hp' => 'required',
            'alamat'    => 'required',
            'tempat_lahir'  => 'required',
            'tanggal_lahir' => 'required',
            'kelas' => 'required',
            'foto' => 'required|mimes:jpeg,png,jpg',
            'pembayaran' => 'required|mimes:pdf'
        ]);

        $data['users'] = $id;
        $data['no_hp'] = $request->no_hp;
        $data['alamat'] = $request->alamat;
        $data['tempat_lahir'] = $request->tempat_lahir;
        $data['tanggal_lahir'] = $request->tanggal_lahir;
        $data['kelas_id'] = $request->kelas;

        if($request->hasFile('foto')){
            $request->file('foto')->move('images/', $request->file('foto')->getClientOriginalName());
            $data['foto'] = $request->file('foto')->getClientOriginalName();
        }

        if($request->hasFile('pembayaran')){
            $request->file('pembayaran')->move('pembayaran/', $request->file('pembayaran')->getClientOriginalName());
            $data['pembayaran'] = $request->file('pembayaran')->getClientOriginalName();
        }

        // $file = $request->file('foto');
        // if($file){
        //     $nama_file = date('Y-m-d H:i:s').$file->getClientOriginalName();
        //     $file->move('foto', $nama_file);
        //     $data['foto'] = 'foto/'.$nama_file;
        // }
        
        $data['created_at'] = date('Y-m-d H:i:s');
        $data['updated_at'] = date('Y-m-d H:i:s');

        Pendaftaran::insert($data);

        return redirect('/home')->with('sukses', 'Biodata Berhasil Ditambah!');

    }
}
