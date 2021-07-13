<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModeldosenSK extends CI_Model {
	public function tampil_data($username,$table){
// fungsi untuk menampilkan data DOSEN

		$this->db->where('nid', $username); //untuk menampilkan data diambil dari nid tabel dosen
		$this->db->join('thn_akad', 'thn_akad.id_ta = bimbingan.id_ta'); //melakukan join/gabungan kolom id_ta di tabel tahun akad dan id ta di tabel bimbingan
		return $this->db->get($table); //mengambil data di tabel

		
	}


	public function edit_data($where,$table){
		//fungsi untuk edit data

		$this->db->join('thn_akad','thn_akad.id_ta = bimbingan.id_ta'); //melakukan join/gabungan kolom id_ta di tabel tahun akad dan id ta di tabel bimbingan
		$this->db->join('dosen', 'dosen.nid = bimbingan.nid'); //menlakukan join/gabungan ke 2 kali kolom nid di tabel dosen dan kolom nid di tabel bimbingan
		return $this->db->get_where($table,$where); //mengambil data ditabel dan berdasarkan yang di controller
	}



	public function lihatmhsb($id_skpmb, $table){
		// fungsi lihat mahasiswa bimbingan 1

		$this->db->where('id_sk1', $id_skpmb); //mengambil data di kolom id_sk1 di tabel
		
		return $this->db->get($table); //mengambil data di tabel
		
		
	}


	public function lihatmhsb2($id_skpmb, $table){
//fungsi melihat mahasiswa bimbingan 2

		$this->db->where('id_sk2', $id_skpmb); //mengambil data di kolom id_sk2 di tabel
		return $this->db->get($table); //mengambil data di tabel
	}

	

	public function hjml($id_skpmb,$table){
//fungsi menghitung jumlah mahasiswa berdasarkan sk bimbingan

		$this->db->where('id_sk1', $id_skpmb); //mengambil data di kolom id_sk1 di tabel
		$this->db->or_where('id_sk2' , $id_skpmb); //mengambil data di kolom id_sk2 di tabel
		return $this->db->count_all_results($table); //selanjutnya menghitung jumlah mahasiswa di tabel 
	} 

	public function download($id){
		// fungsi download sk pembimbing

		$query = $this->db->get_where('bimbingan',array('id_skpmb'=>$id)); //mengambil data id_skpmb di tabel bimbingan
		return $query->row_array(); //mengambil data di variabel query diatas
	}




}