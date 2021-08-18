<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'WelcomeController@index');
Route::get('/join', 'WelcomeController@join');


// Route::get('create_admin', function(){
//     \DB::table('users')->insert([
//         'role'  => 1,
//         'id_registrasi' => '-',
//         'name'  => 'admin',
//         'email' => 'admin@admin.com',
//         'password'  => bcrypt('admin'),
//         'jadwal_id' => 0
//     ]);
// });

Route::post('/siswa/create', 'SiswaController@store');
Route::get('/login2', 'AuthController@login')->name('login2');
Route::post('/postLogin', 'AuthController@postLogin');
Route::get('keluar', 'AuthController@keluar');
Route::get('/gantipass', 'AuthController@gantiPass');
Route::patch('/gantipass', 'AuthController@updatePass')->name('password.ganti');


Route::group(['middleware' => 'auth'], function(){
    Route::get('dashboard', 'DashboardController@index');
    Route::get('pendaftaran', 'PendaftaranController@index');
    Route::post('/pendaftaran/{users}', 'PendaftaranController@store');
    Route::get('/verifikasi/{id}', 'VerifikasiController@verifikasi');
    Route::get('/verifikasi/{id}/batalVerifikasi', 'VerifikasiController@batalverifikasi');
    Route::get('/peserta', 'PesertaController@index');
    Route::get('/peserta/verifikasi', 'PesertaController@diverifikasi');
    Route::get('/peserta/belum-verifikasi', 'PesertaController@belumverifikasi');
    Route::get('/peserta/{id}/detail', 'PesertaController@detail');
    Route::get('/jadwal', 'JadwalController@index');
    Route::get('/jadwal/tambah', 'JadwalController@tambah');
    Route::post('/postjadwal', 'JadwalController@postJadwal');
    Route::get('/jadwal/{id}/edit', 'JadwalController@edit');
    Route::post('/jadwal/{id}/update', 'JadwalController@update');
    Route::get('/jadwal/{id}/hapus', 'JadwalController@hapus');
});

Auth::routes();

Route::get('/home', function(){
    return redirect('dashboard');
});
