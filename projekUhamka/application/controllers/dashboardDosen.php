<!-- Dhiki Adriansyah/1703015142 -->

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DashboardDosen extends CI_Controller{
	
	function __construct(){
		parent::__construct();

//fungsi untuk mengecek apakah sudah login dan jika belum akan mengarah ke controller auth/index yang menampilkan form login
		if(!isset($this->session->userdata['username'])){
			$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
				Anda Belum Login
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
				</div>'); //menampilkan pesan bahwa belum login
			redirect('auth'); //memindahkan ke controller auth
		}
	} 

	public function dosen()
	//fungsi untuk tampilan dosen
	{
		
		$data['dosenSk'] = $this->modeldosenSK->tampil_data($this->session->userdata['username'],'bimbingan')->result(); //mengambil username yg telah login di tabel bimbingan & terhubung ke model dosen sk
		
		$data['hitungjml'] = $this->modeldosenSK->hjml('id_skpmb', 'mahasiswa'); //mengambil id_sk di tabel mahasiswa & terhubung ke model dosen sk

		$this->load->view('dosenV/headerHUtama_dosen'); //template
		$this->load->view('dosenV/dosen', $data); //menampilkan halaman dashboard dosen
		$this->load->view('dosenV/footerHUtama_dosen'); //template
	}  


	public function lihat_sk($id){
//fungsi untuk lihat sk

		$where = array ('id_skpmb' => $id); //untuk mengamil id sk di tabel mahasiswa
		$data ['dosenSk'] = $this->modeldosenSK->edit_data($where, 'bimbingan')->result(); //mengambil data yang berada di tabel bimbingan & terhubung ke model dosen sk
// ----------------------------------------------------------
		$data ['mhsbimbingan'] = $this->modeldosenSK->lihatmhsb($id, 'mahasiswa')->result(); //mengambil data yang berada di tabel mahasiswa & terhubung ke model dosen sk
		$data ['mhsbimbingan2'] = $this->modeldosenSK->lihatmhsb2($id, 'mahasiswa')->result(); //mengambil data yang berada di tabel mahasiswa & terhubung ke model dosen sk
		
		$data['hitungjml'] = $this->modeldosenSK->hjml($id, 'mahasiswa'); //mengambil data yang berada di tabel mahasiswa
		$this->load->view('dosenV/dosen_lihatskripsi', $data);  //menambilkan halaman lihat sk skripsi
	}

	public function editmhs_bimbingan(){
//fungsi untuk edit mahasiswa bimbingan

		$this->load->view('dosenV/dosen_lihatskripsi'); //menampilkan halaman dosen  lihat sk skripsi
	}


	public function cetak($id){
		// fungsi untuk download file Sk bimbingan

		$this->load->helper('download'); //meload helper yang tersedia di codeigniter
		$fileinfo = $this->modeldosenSK->download($id); //mengambil data di model dosenSK
		$dsk = 'uploads/file_skps/'.$fileinfo['file_sk']; //mengambil data yang di folder uploads 
		force_download($dsk, NULL);
	}

}
?>