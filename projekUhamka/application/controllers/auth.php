<!-- Dhiki Adriansyah/1703015142 -->

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller{

 //Fungsi __construct akan dieksekusi terlebih dahulu saat class login di panggil
	public function __construct()
	{
		parent::__construct();

		$this->load->library('form_validation'); //menjalankan fungsi library yang disediakan codeigniter
		$this->load->library('session'); //menjalankan fungsi library yang disediakan codeigniter
	}



	public function index()
	//fungsi untuk menampilkan login
	{
		
		$this->load->view('template_login/auth_header');
		$this->load->view('auth/login'); //menampilkan halaman login
		$this->load->view('template_login/auth_footer');

	}


	public function ceklogin(){	
		// fungsi untuk cek login/ memproses login

		$this->form_validation->set_rules('username','username','required',[
			'required' => 'Username wajib diisi!']); 
		$this->form_validation->set_rules('password','password','required',[
			'required' => 'Password wajib diisi!']);
		if($this->form_validation->run() == FALSE){
			$this->load->view('template_login/auth_header');
			$this->load->view('auth/login'); //menampilkan halaman login
			$this->load->view('template_login/auth_footer');
		}else{
			$username	= $this->input->post('username');
			$password	= $this->input->post('password');

			$user 	= $username;
			$pass 	= MD5($password);

			$cek	= $this->login_m->cek_login($user, $pass);

			if ($cek->num_rows() > 0){
				foreach ($cek->result() as $ck){
					$sess_data['username'] 	= $ck->username;
					$sess_data['level']		= $ck->level;
					$sess_data['id']		= $ck->id;

					$this->session->set_userdata($sess_data);
				}
				if ($sess_data['level'] == 'dosen') {
					redirect('dashboardDosen/dosen'); //jika login sebagai dosen maka ke halaman dashboard dosen
				}elseif ($sess_data['level'] == 'prodi') {
					redirect('dashboardKaprodi/kaprodi');  //jika login sebagai kaprodi maka ke halaman dashboard kaprodi
				}else{
					redirect('sekretSk/admin');  //jika login sebagai sekret maka ke halaman dashboard sekret
				}
			}else{
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
					Username atau Password Salah !
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
					</div>'); //jika salah input  maka menampilkan pesan username / password salah
				redirect ('auth'); //jika salah login maka mengarah ke halaman login lagi
			}
		}
	}




	public function logout(){
//fungsi untuk logout

		$this->session->sess_destroy();
		echo '<script>
		alert("Sukses! Anda berhasil logout."); 
		window.location.href="'.base_url('auth').'";
		</script>'; //menampilkan pesan yang berisi sukses anda berhasil logout
	}


}

?>