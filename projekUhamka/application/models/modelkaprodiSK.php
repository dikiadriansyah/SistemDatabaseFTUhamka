<!-- Dhiki Adriansyah/1703015142 -->

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelkaprodiSK extends CI_Model {

	public function tampil_data(){
		// fungsi untuk menampilkan data Kaprodi

		$this->db->from('dosen'); //mengambil data dari tabel dosen
		$this->db->join('bimbingan', 'dosen.nid = bimbingan.nid');  //melakukan join/gabungan kolom nid di tabel dosen dan nid di tabel bimbingan
		$this->db->join('thn_akad', 'thn_akad.id_ta = bimbingan.id_ta');  //melakukan join/gabungan kolom id_ta di tabel dosen dan id_ta di tabel bimbingan
		return $this->db->get(''); //mengambil data dari query diatas 
	} 

	public function tampil_dropdown($table)
	{
		//fungsi untuk menampilkan dropdown tabel 
		return $this->db->get($table);

	}

	public function hitungmhs(){
		//fungsi untuk hitung jumlah mahasiswa
		$query = $this->db->get('mahasiswa'); //mengambil data di tabel mahasiswa

		if($query->num_rows() > 0) //jika tabel ada isi nya maka hitung jumlah mahasiswa nya
		{
			return $query->num_rows();
		}else{
			return 0;
		}
	}  

	public function edit_data($where,$table){
		//fungsi untuk edit data 

		$this->db->join('thn_akad','thn_akad.id_ta = bimbingan.id_ta'); //melakukan join/gabungan kolom id_ta di tabel tahun akad dan id_ta di tabel bimbingan
		$this->db->join('dosen', 'dosen.nid = bimbingan.nid'); //melakukan join/gabungan kolom nid di tabel dosen dan nid di tabel bimbingan
		return $this->db->get_where($table,$where); //mengambil data di tabel dan berdasarkan where di controller
	}

	public function lihat_data($id_skpmb, $table){
//funsi untuk lihat data 

		$this->db->where('id_sk1', $id_skpmb); //mengambil data berdasarkan kolom id_sk1
		
		return $this->db->get($table); //mengambil data query diatas dan di tabel
	}
	
	public function lihat_data2($id_skpmb, $table){
		// fungsi untuk lihat data 2
		$this->db->where('id_sk2', $id_skpmb); // //mengambil data berdasarkan kolom id_sk1
return $this->db->get($table); //mengambil data query diatas dan di tabel
}


public function edit_datamhs($where,$table){
//fungsi untuk edit mahasiswa

	return $this->db->get_where($table,$where); //untuk mengambil data berdasarkan tabel dan where di controller

}


public function insert_mhs($data,$table){
//fungsi untuk masukan data mahasiswa

	return $this->db->insert($table,$data); //memasukan data di tabel
}


public function update_mhs($where,$data,$table)
//fungsi untuk update mahasiswa

{

	$this->db->where($where); 
	$this->db->update($table,$data);
}


public function tampil_dropdown_nim(){
	// fungsi untuk tampil dropdown nim

	$query = $this->db->get('mahasiswa')->result(); //mengambil data di tabel mahasiswa 
	return $query;
}

public function hapus_data($where, $table){
//fungsi untuk hapus data sk

	$this->db->where($where);
	$this->db->delete($table); //menghapus data di tabel
}


public function hapus_data_mahasiswa($where, $table){
//fungsi untuk hapus data mahasiswa
	$this->db->where($where);
	$this->db->delete($table); //menghapus data di tabels
}



public function download($id){
//fungsi untuk download sk

	$query = $this->db->get_where('bimbingan',array('id_skpmb'=>$id)); //mengambil data id_skpmb di tabel bimbingan
	return $query->row_array(); //mengambil data di variabel query diatas
}


public function hjml($id_skpmb,$table){
	//fungsi menghitung jumlah mahasiswa berdasarkan sk bimbingan


	$this->db->where('id_sk1', $id_skpmb); //mengambil data di kolom id_sk1 di tabel
	$this->db->or_where('id_sk2' , $id_skpmb); //mengambil data di kolom id_sk2 di tabel
	return $this->db->count_all_results($table); //selanjutnya menghitung jumlah mahasiswa di tabel 
} 

}