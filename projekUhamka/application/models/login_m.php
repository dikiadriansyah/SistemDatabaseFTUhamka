<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_m extends CI_Model {

	public function cek_login($username, $password)
	// fungsi untuk cek login
	{
		$this->db->where("username", $username); //berdasarkan kolom username
		$this->db->where("password", $password); //berdasarkan kolom username
		return $this->db->get('user'); //mengambil data di tabel user
	}

	public function getLoginData ($user, $pass)
	//fungsi untuk mendapatkan loginData
	{
		$u = $user; //menginisiasi
		$p = MD5($pass); //menginisasi dan mefungsi MD5 yang tersedia di php

		$query_cekLogin = $this->db->get_where('user', array('username' => $u, 'password' => $p)); //untuk cek login berdasarkan kolom username,password, di tabel user

		if(count($query_cekLogin->result()) > 0){ //jika kolom ada data nya maka ambil data logged_in, username, password, leveel, id_user
			foreach ($query_cekLogin->result() as $ck) {
				foreach ($query_cekLogin->result() as $ck) {
					$sess_data ['logged_in']	= TRUE;
					$sess_data ['username'] 	= $ck->username;
					$sess_data ['password']		= $ck->password;
					$sess_data ['level']		= $ck->level;
					$sess_data ['id_userd']		= $ck->id_userd;
					$this->session->set_userdata($sess_data);
				}
				if ($sess_data ['level'] == 'dosen') { //untuk mengecek berdasarkan level
					redirect('administrator/dashboard'); //mengarahkan ke controller administrator
				}
				
			}
		}else{
			$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
				Username atau Password Salah !
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
				</div>');
			redirect('administrator/auth');
		}
	}
}