<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelsekretSK extends CI_Model {
	public function tampil_data(){
// fungsi untuk menampilkan data Kaprodi

		$this->db->from('dosen'); //mengambil data dari tabel dosen
		$this->db->join('bimbingan', 'dosen.nid = bimbingan.nid'); //melakukan join/gabungan kolom nid di tabel dosen dan nid di tabel bimbingan
		$this->db->join('thn_akad', 'thn_akad.id_ta = bimbingan.id_ta');  //melakukan join/gabungan kolom id_ta di tabel tahun akad dan id_ta di tabel bimbingan
		return $this->db->get(''); //mengambil data dari query diatas 
	}


	public function tampilsk($table){
//fungsi untuk menampilkan SK pembimbing  

		$this->db->join('dosen','dosen.nid = bimbingan.nid'); //melakukan join/gabungan kolom nid di tabel dosen dan nid di tabel bimbingan
		return $this->db->get($table); //mengambil data query diatas dan di tabel
	} 

	public function hitung_mhs(){
//fungsi untuk hitung jumlah mahasiswa

		$query = $this->db->get('mahasiswa');  //mengambil data di tabel mahasiswa


		if($query->num_rows() > 0)//jika tabel ada isi nya maka hitung jumlah mahasiswa nya
		{
			return $query->num_rows();
		}else{
			return 0;
		}

	} 


	public function edit_data($where,$table){
		//fungsi untuk edit data sk

		$this->db->join('thn_akad','thn_akad.id_ta = bimbingan.id_ta'); //melakukan join/gabungan kolom id_ta di tabel tahun akad dan id_ta di tabel bimbingan
		$this->db->join('dosen', 'dosen.nid = bimbingan.nid'); //melakukan join/gabungan kolom nid di tabel dosen dan nid di tabel bimbingan
		return $this->db->get_where($table,$where);  //mengambil data di tabel berdasarkan where di controller
	}



	public function update($data,$kondisi)
	{ 
		//fungsi untuk update SK


		$this->db->update('bimbingan',$data,$kondisi); //mengupdate data di tabel bimbingan
		return TRUE;
	}
	
	public function tampil_dropdown($table)
	{
//fungsi untuk menampilkan dropdown tabel 

		return $this->db->get($table);
		
	}
	public function tampilthn_dropdown($table)
	{
//fungsi untuk menampilkan dropdown tahun tabel 

		return $this->db->get($table);
		
	}




	public function tampil_datadfm($id_skpmb, $table){
//menampilkan data mahasiswa berdasarkan id_sk

		$this->db->where('id_sk1', $id_skpmb); //mengambil data berdasarkan kolom id_sk1
		
		return $this->db->get($table);
		
	} 

	public function tampil_datadfm2($id_skpmb, $table){
//menampilkan data mahasiswa 2 berdasarkan id_sk

		$this->db->where('id_sk2', $id_skpmb); //mengambil data berdasarkan kolom id_sk1
		return $this->db->get($table);
	} 

	public function sekrettampil_mhsbim(){
//fungsi untuk tampil mahasiswa bimbingan


		$this->db->from('mahasiswa'); //mengambil data dari tabel mahasiswa
		return $this->db->get('');

	}

	public function edit_mhsbim($where,$table){
//fungsi untuk edit mahasiswa bimbingan

		return $this->db->get_where($table,$where);
	}

	
	public function update_mhs($where,$data,$table)
	{
		//fungsi untuk update mahasiswa bimbingan
		
		$this->db->where($where);
		$this->db->update($table,$data);
	}


	public function tampil_dropdown_nim()
	{
// fungsi untuk tampil dropdown nim

		$query = $this->db->get('mahasiswa')->result(); //mengambil data di tabel mahasiswa
		return $query;
	}


	

	public function insert($data)
// fungsi untuk memasukkan data sk

	{

		$this->db->insert('bimbingan',$data); //memasukan ke tabel bimbingan
		return TRUE;
	}

	public function delete_sk($where)
	// fungsi untuk menghapus sk bimbingan
	{


		$this->db->where($where);
		$this->db->delete('bimbingan'); //menghapus data sk di tabel bimbingan
		return TRUE;
	}


	public function hapus_data_mhs($table,$where){
// fungsi untuk menghapus data mahasiswa

		$this->db->where($where);
		$this->db->delete($table);
	}


	public function insert_mhs($data,$table){
//fungsi untuk memasukan mahasiswa

		return $this->db->insert($table,$data);
	}




	public function download($id){
//fungsi untuk download sk


		$query = $this->db->get_where('bimbingan',array('id_skpmb'=>$id)); //mengambil data id_skpmb di tabel bimbingan

		return $query->row_array();  //mengambil data di variabel query diatas
	}


	public function search_nim($nim){
//fungsi untuk mencari nim

		$this->db->like('nim', $nim , 'both');
		$this->db->order_by('nim', 'ASC'); //urutkan secara ascending berdasarkan kolom nim
		$this->db->limit(10); //mengambil 10 baris
		return $this->db->get('mahasiswa')->result(); //megambil data di tabel
	}


	public function hjml($id_skpmb,$table){
//fungsi menghitung jumlah mahasiswa berdasarkan sk bimbingans

		$this->db->where('id_sk1', $id_skpmb); //mengambil data di kolom id_sk1 di tabels
		$this->db->or_where('id_sk2' , $id_skpmb); //mengambil data di kolom id_sk2 di tabel
		return $this->db->count_all_results($table); //selanjutnya menghitung jumlah mahasiswa di tabel 
	} 

}