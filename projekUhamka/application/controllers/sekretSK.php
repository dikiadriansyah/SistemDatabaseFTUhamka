<!-- Dhiki Adriansyah/1703015142 -->

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SekretSK extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->library('upload'); //menjalankan fungsi library yang tersedia di codeigniter
		$this->load->helper('url'); //menjalankan fungsi helper yang tersedia di codeigniter

		if(!isset($this->session->userdata['username'])){
      //fungsi untuk mengecek apakah sudah login dan jika belum akan mengarah ke controller auth/index yang menampilkan form login

			$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
				Anda Belum Login
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
				</div>'); //menampilkan pesan bahwa belum login
			redirect('auth'); //memindahkan ke controller auth
		}
	} 

	public function admin(){
//fungsi untuk menampilkan halaman admin/sekret

		$data['sekretSK'] = $this->modelsekretSK->tampil_data()->result(); //mengambil data sk yang berada di tersedia
		$data['total'] = $this->modelsekretSK->hitung_mhs(); //mengambil data untuk menghitung junlah mahasiswa

		$this->load->view('sekret_v/sekret', $data); //mengarahkan ke halaman sekret
		
	}


	public function sekret_tambahsk(){
// fungsi ini untuk manmpilkan halaman tambah sk bimbingan skripsi

		$data['sekretmhsbim'] = $this->modelsekretSK->sekrettampil_mhsbim()->result(); //mengambil data mahasiswa bimbingan yang berada di tabel bimbingan

		$data['nidneditskripsi'] = $this->modelsekretSK->tampil_dropdown('dosen')->result(); //mengambil data nid yang berada di tabel dosen
		$data['thneditskripsi'] = $this->modelsekretSK->tampilthn_dropdown('thn_akad')->result(); //mengambil data tahun yang berada di tabel tahun akad

		$this->load->view('sekret_v/sekret_tambah_skskripsi',$data); //mengarahkan ke halaman tambah sk bimbingan skripsi	
		
	}



	public function aksitambah_sk(){
// fungsi untuk memperoses ketika tombol simpan sk bimbingan skripsi

		$this->_rules();
		if($this->form_validation->run() == FALSE)
		{
			$this->sekret_tambahsk();
		}else{
			$tgl_skpmb 			= $this->input->post('tgl_skpmb');
			$no_skpmb			= $this->input->post('no_skpmb');
			$id_ta 				= $this->input->post('id_ta');
			$nid				= $this->input->post('nid');
			$jml_mhs			= $this->input->post('jml_mhs');
			$file_sk			= $_FILES['file_sk']; //untuk menerima inputan berupa file
			
      // get foto
			$config['upload_path'] = './uploads/file_skps'; //untuk menentukan file yang diupload akan ditaruh mana

			$config['allowed_types'] = 'pdf';
      $config['max_size'] = '2048';  //2MB max

      $config['file_name'] = $_FILES['file_sk']['name'];

      $this->upload->initialize($config);

      if (!empty($_FILES['file_sk']['name'])) {
      	if ( $this->upload->do_upload('file_sk') ) {
      		$file_sk = $this->upload->data();
      		$data = array(
      			'tgl_skpmb'			=> $tgl_skpmb,
      			'no_skpmb'			=> $no_skpmb,
      			'id_ta'				=> $id_ta,
      			'nid'				=> $nid,
      			'jml_mhs'         => $jml_mhs,
      			'file_sk'			=> $file_sk['file_name']
      		);
      		$this->modelsekretSK->insert($data); //tabel untuk menambahkan ke tabel


      		$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
      			Data SK Bimbingan Berhasil Ditambahkan!
      			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
      			<span aria-hidden="true">&times;</span>
      			</button>
      			</div>');
      		redirect('sekretSK/admin');
      	}
      }
    }
  }


  public function _rules()
  {
  	$this->form_validation->set_rules('id_ta','id_ta','required',['required' => 'Tahun Akademik wajib diisi!']);
  	$this->form_validation->set_rules('nid','nid','required',['required' => 'NIDN/NIDK wajib diisi!']);
  	$this->form_validation->set_rules('tgl_skpmb','tgl_skpmb','required',['required' => 'Tanggal SK wajib diisi!']);
  	$this->form_validation->set_rules('no_skpmb','no_skpmb','required',['required' => 'No SK wajib diisi!']);

  }




  public function sekret_editsk($id_skpmb){
// menampilkan form edit sk bimbingan

  	$where = array('id_skpmb' => $id_skpmb);
  	$data['bimbingan'] = $this->modelsekretSK->edit_data($where,'bimbingan')->result();

		// -----------------------------
  	$data['nidneditskripsi'] = $this->modelsekretSK->tampil_dropdown('dosen')->result();

  	$data['thneditskripsi'] = $this->modelsekretSK->tampilthn_dropdown('thn_akad')->result();

  	$data['df_bimbingan'] = $this->modelsekretSK->tampil_datadfm($id_skpmb, 'mahasiswa')->result();

    $data['df_bimbingan2'] = $this->modelsekretSK->tampil_datadfm2($id_skpmb, 'mahasiswa')->result();

    $data['hitungjml'] = $this->modelsekretSK->hjml($id_skpmb, 'mahasiswa');
// ----------------------------------------
    $this->load->view('sekret_v/sekret_edit_skskripsi',$data);	
  }



  public function sekret_aksiupdate_sk(){
    // fungsi untuk memproses update ketika di klik tombol update

  	$id_skpmb			= $this->input->post('id_skpmb');
  	$tgl_skpmb 			= $this->input->post('tgl_skpmb');
  	$no_skpmb			= $this->input->post('no_skpmb');
  	$id_ta 				= $this->input->post('id_ta');
  	$nid				= $this->input->post('nid');
  	$jml_mhs            = $this->input->post('jml_mhs');

  	$path = './uploads/file_skps/';

  	$kondisi = array('id_skpmb' => $id_skpmb );

      // get foto
  	$config['upload_path'] = './uploads/file_skps';
  	$config['allowed_types'] = 'pdf';
      $config['max_size'] = '2048';  //2MB max

      $config['file_name'] = $_FILES['file_sk']['name'];

      $this->upload->initialize($config);

      if (!empty($_FILES['file_sk']['name'])) {
      	if ( $this->upload->do_upload('file_sk') ) {
      		$file_sk = $this->upload->data();
      		$data = array(
      			'tgl_skpmb'			=> $tgl_skpmb,
      			'no_skpmb'			=> $no_skpmb,
      			'id_ta'				=> $id_ta,
      			'nid'				=> $nid,
      			'jml_mhs'         => $jml_mhs,
      			'file_sk'			=> $file_sk['file_name']
      		);
              // hapus foto pada direktori
      		@unlink($path.$this->input->post('filelama'));
      		
      		$this->modelsekretSK->update($data,$kondisi);
      		$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
      			Data Berhasil Diupdate !
      			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
      			<span aria-hidden="true">&times;</span>
      			</button>
      			</div>');
      		redirect('sekretSK/admin');
      	}
      }
    }





    public function sekret_tambah_mhs($id_skpmb){
// fungsi untuk menampilkan halaman tambah mahasiswa

     $data['dropdown_nim'] = $this->modelsekretSK->tampil_dropdown_nim();
     $data['penyelenggara'] = $this->modelsekretSK->tampil_dropdown('penyelenggara')->result();
     $data['tahunakad'] = $this->modelsekretSK->tampil_dropdown('thn_akad')->result();
     $data['idsk'] =  $id_skpmb;

     $this->load->view('sekret_v/sekret_tambah_mhs',$data);		
   }


   public function tambah_aksi_mhs(){
// untuk memproses tambah mahasiswa ketika di klik
  	

    $id_mhs = $this->input->post('id_mhs');
    $nim = $this->input->post('nim');
    $id_sk = $this->input->post('id_sk');
    $j_skripsi = $this->input->post('j_skripsi');
    $pmb = $this->input->post('pmb');

    if($pmb == 'id_sk1'){
      $data = array(

        'j_skripsi' => $j_skripsi,
        'id_sk1'      => $id_sk
      );
    }else{
      $data = array(

    
        'j_skripsi' => $j_skripsi,
        'id_sk2'      => $id_sk

      );
    }

    $where = array(
      'id_mhs' => $id_mhs

    );
    $this->modelsekretSK->update_mhs($where,$data,'mahasiswa');
    $this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
      Data mahasiswa Berhasil Ditambahkan!
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
      </div>'); //menampilkan pesan yang berisi mahasiswa berhasil ditambah

    redirect('sekretSK/admin'); //mengarahkan ke controller sekretSK

  }


  public function sekret_edit_mhs($id){
// menampilkan halaman edit mahasiswa

  	$where = array ('id_mhs' => $id);
  	$data ['sekret_edit_mhs'] = $this->modelsekretSK->edit_mhsbim($where, 'mahasiswa')->result();

// ----------------------------------
  	$data['dropdown_nim'] = $this->modelsekretSK->tampil_dropdown_nim();

  	$this->load->view('sekret_v/sekret_edit_mhs',$data);	
  }


  public function aksi_edit_mhs(){

  	$id_mhs = $this->input->post('id_mhs');
  	$nim = $this->input->post('nim');
  	$nama_mhs = $this->input->post('nama_mhs');
  	$j_skripsi = $this->input->post('j_skripsi');


  	$data = array(
  		'nim' => $nim,
  		'nama_mhs' => $nama_mhs,
  		'j_skripsi' => $j_skripsi

  	);

  	$where = array(
  		'id_mhs' => $id_mhs

  	);
  	$this->modelsekretSK->update_mhs($where,$data,'mahasiswa');
  	$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
  		Data Mahasiswa Berhasil Diubah !
  		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
  		<span aria-hidden="true">&times;</span>
  		</button>
  		</div>');


  	redirect('sekretSK/admin');
  }



  public function hapus_sk($id,$file_sk){
    // fungsi untuk menghapus sk


  	$path = './uploads/file_skps/';
  	@unlink($path.$file_sk);

  	$where = array('id_skpmb' => $id );
  	$this->modelsekretSK->delete_sk($where);
  	$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
  		Data Berhasil Dihapus !
  		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
  		<span aria-hidden="true">&times;</span>
  		</button>
  		</div>');
  	redirect('sekretSK/admin');
  }

  public function delete($nim){
    // fungsi untuk menghapus data mahasiswa

  	$where = array('nim' => $nim);
  	$this->modelsekretSK->hapus_data_mhs('mahasiswa',$where);
  	$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
  		Data Mahasiswa Berhasil Dihapus !
  		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
  		<span aria-hidden="true">&times;</span>
  		</button>
  		</div>');

  	redirect('sekretSK/admin');
  }



  public function download_sk($id){
// fungsi untuk download sk

  	$this->load->helper('download');
  	$fileinfo = $this->modelsekretSK->download($id);
  	$kpsk = 'uploads/file_skps/'.$fileinfo['file_sk'];
  	force_download($kpsk, NULL);
  }




}
?>