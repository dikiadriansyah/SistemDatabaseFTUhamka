<!-- Dhiki Adriansyah/1703015142 -->

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DashboardKaprodi extends CI_Controller{

	function __construct(){
		parent::__construct();

		if(!isset($this->session->userdata['username'])){
			$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
				Anda Belum Login
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button> 
				</div>');  //menampilkan pesan bahwa belum login
			redirect('auth');  //jika belum login maka diarahkan ke halaman login
		}
	}


	public function kaprodi(){
		$data1 = $this->user_m->ambil_data($this->session->userdata ['username']); //mengambil data username di tabel user
		$data['kaprodiSk'] = $this->modelkaprodiSK->tampil_data()->result(); //mengambil data di model kaprodiSK
		$data['total'] = $this->modelkaprodiSK->hitungmhs(); //mengambil data di model kaprodiSK

		$this->load->view('kaprodi_v/kaprodi',$data,$data1); //menampilkan halaman dashboard kaprodi dan data nya berasal dari model kaprodi sk
	}

	public function lihat_kaprodisk($id){
		$where = array ('id_skpmb' => $id); // mengambil data id_skpmb
		$data ['kaprodiSk'] = $this->modelkaprodiSK->edit_data($where, 'bimbingan')->result(); //mengambil data di tabel bimbingan
		// -----------------
		$data ['mhsbimbingan'] = $this->modelkaprodiSK->lihat_data($id, 'mahasiswa')->result(); //mengambil data di tabel mahasiswa
		$data ['mhsbimbingan2'] = $this->modelkaprodiSK->lihat_data2($id, 'mahasiswa')->result(); //mengambil data di tabel mahasiswa

		$data['hitungjml'] = $this->modelkaprodiSK->hjml($id, 'mahasiswa'); //mengambil data di tabel mahasiswa
		$this->load->view('kaprodi_v/kaprodi_lihat_skskripsi',$data); //mengarahkan ke halaman kaprodi lihat skripsi 
	}

	
	public function tambah_mhsbim($id_skpmb){ 
	//fungsi untuk halaman tambah mahasiswa

		$data['dropdown_nim'] = $this->modelkaprodiSK->tampil_dropdown_nim(); //mengambil data nim
		$data['penyelenggara'] = $this->modelsekretSK->tampil_dropdown('penyelenggara')->result(); //mengambil data di tabel penyeleggara
		$data['tahunakad'] = $this->modelsekretSK->tampil_dropdown('thn_akad')->result(); //mengambil data di tabel tahun akad

		// $data['idsk'] = $this->modelsekretSK->tampilsk('bimbingan')->result();
		$data['idsk'] =  $id_skpmb;

		$this->load->view('kaprodi_v/kaprodi_tambah_mhs', $data); //mengarahkan controller kaprodi_v / kaprodi ke halaman tambah mahasiswa
	} 


	public function aksi_tmbh_mhs(){
//fungsi untuk memproses halaman tambah mahasiswa

		$id_mhs = $this->input->post('id_mhs'); // mengambil data input id mahasiswa

		$nim = $this->input->post('nim'); // mengambil data input nim mahasiswa
		// $nama_mhs = $this->input->post('nama_mhs');
		$j_skripsi = $this->input->post('j_skripsi'); //mengambil data input judul skripsi
		$id_sk = $this->input->post('id_sk'); //mengambil data input id sk skripsi
		$pmb = $this->input->post('pmb'); //mengambil data input bimbingan



		if($pmb == 'id_sk1'){ 
			//jika id_sk1 maka masuk ke kolom sk1 di tabel mahasiswa
			
			$data = array(
				'j_skripsi' => $j_skripsi, 
				'id_sk1'      => $id_sk
			);
		}else{
			//jika id_sk2 maka masuk ke kolom sk2 di tabel mahasiswa

			$data = array(
				'j_skripsi' => $j_skripsi,
				'id_sk2'      => $id_sk
			);
		}
		$where = array(
			'id_mhs' => $id_mhs //berdasarkan id mahasiswa

		);

		$this->modelsekretSK->update_mhs($where,$data,'mahasiswa'); // memasukkan data ke tabel mahasiswa

		$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
			Data mahasiswa Berhasil Ditambahkan!
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
			</div>');
		//fungsi untuk menampilkan pesan bahwa data berhasil ditambah

		redirect('dashboardKaprodi/kaprodi'); //untuk mengarahkan ke halaman dashboard kaprodi
	}


	public function edit_mhsbim($id){
		// fungsi kaprodi untuk edit mahasiswa
		$where = array ('id_mhs' => $id); //mengambil id mahasisswa
		$data ['sekret_edit_mhs'] = $this->modelkaprodiSK->edit_datamhs($where, 'mahasiswa')->result(); //mengambil data di tabel mahasiswa 
		
		$data['dropdown_nim'] = $this->modelkaprodiSK->tampil_dropdown_nim(); //mengambil data nim
		
		$this->load->view('kaprodi_v/kaprodi_edit_mhs',$data);//mengarahkan kaprodi ke halaman edit mahasiswa

	} 

	public function aksi_edit_mhsbim(){
		// fungsi untuk proses edit mahasiswa

		$id_mhs = $this->input->post('id_mhs');//mengambil data input id mahasiswa
		$nim = $this->input->post('nim'); //mengambil data input nim mahasiswa
		$nama_mhs = $this->input->post('nama_mhs'); //mengambil data input nama mahasiswa
		$j_skripsi = $this->input->post('j_skripsi'); //mengambil data input judul skripsi mahasiswa


		$data = array(
			'nim' => $nim, 
			'nama_mhs' => $nama_mhs,
			'j_skripsi' => $j_skripsi

		); 

		$where = array(
			'id_mhs' => $id_mhs  //berdasarkan id mahasiswa
			
		);
		$this->modelkaprodiSK->update_mhs($where,$data,'mahasiswa'); //untuk menambahkan data dari fungsi diatas

		$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
			Data Mahasiswa Berhasil Diubah !
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
			</div>'); //menampilkan pesan bahwa data berhasil diubah


		redirect('dashboardKaprodi/kaprodi'); //mengarah ke controller dashboard kaprodi/ halaman dashboard kaprodi

	}


	public function hapus_sk($id_skpmb){
		// fungsi untuk menghapus sk skripsi


		$where = array('id_skpmb' => $id_skpmb); //untuk menghapus berdasarkan id sk pembimbing
		$this->modelkaprodiSK->hapus_data($where,'bimbingan'); // fungsi untuk hapus sk bimbingan yang berada di tabel bimbingan

		$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
			Data Berhasil Dihapus !
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
			</div>');  //untuk menampilkan pesan bahwa data sk berhasil dihapus
		redirect('dashboardKaprodi/kaprodi'); //mengarahkan ke controller dashboard kaprodi
	}

	public function hapus_mhs($id_mhs){
//fungsi untuk hapus mahasiswa

		$where = array('id_mhs' => $id_mhs); //untuk menghapus berdasarkan id mahasiswa pembimbing
		$this->modelkaprodiSK->hapus_data_mahasiswa($where,'mahasiswa'); //untuk hapus data mahasiswa berdasarkan tabel mahasiswa
		$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
			Data Berhasil Dihapus !
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
			</div>'); //untuk menampilkan pesan bahwa data mahasiswa berhasil dihapus
		redirect('dashboardKaprodi/kaprodi'); //mengarahkan ke controller dashboard kaprodi
	}


	public function download_sk($id){
		//  fungsi untuk download sk 

		$this->load->helper('download'); //helper download untuk membantu function mendownload file sk
		$fileinfo = $this->modelkaprodiSK->download($id);
		$kpsk = 'uploads/file_skps/'.$fileinfo['file_sk'];
		force_download($kpsk, NULL);
	}

}
?>