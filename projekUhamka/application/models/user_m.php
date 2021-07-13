<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_m extends CI_Model {


	public $table 	= 'user'; //menginisiasi tabel
	public $id 		= 'id'; //menginisiasi kolom id

	public function get($id = null)
	//fungsi untuk mengambil id login
	{
		$this->db->from('user'); //mengambil data dari tabel user
		if($id != null){
			$this->db->where('user_id', $id); //mengambil data user_id di tabel user
		}
		$query = $this->db->get();
		return $query;
	}



	public function ambil_data($id){
//fungsi untuk mengambil data user berdasarkan id

		$this->db->join('menus', 'menus.id_menu = user.id'); //melakukan join/gabungan kolom id_menu di tabel menu dan id_menu di tabel user
		$this->db->where('username', $id); //berdasarkan kolom username
		return $this->db->get('user')->row(); //mengambil data di tabel user
	}

	public function id_max()
	//fungsi untuk mengambil id maksimal
	{

		$this->db->from('user'); //mengambil dari tabel user
		$this->db->select_max('id'); //memilih dari kolom id
		return $this->db->get();
	}

	public function tampil_data($table)
	//menampilkan data berdasarkan tabel user
	{
		return $this->db->get($table);
	}

}