<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\User;

class SiswaController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama'  => 'required|min:3',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ]);

        $data['name'] = $request->nama;
        $data['email'] = $request->email;
        $data['password'] = bcrypt($request->password);
        $data['id_registrasi'] = 'REG-'.date('YmdHis');
        $data['tgl_pendaftaran'] = date('Y-m-d');

        User::insert($data);

        return redirect('/')->with('success', 'Terima Kasih Sudah Mendaftar');
    }
}
