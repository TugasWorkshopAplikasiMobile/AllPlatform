<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{
  public function __construct(){
    parent::__construct();
    $this->load->model('m_login');
  }

  public function index(){
    $this->load->view('v_login');
  }
    $cek = $this->m_login->login($this->input->post('username'), ($this->input->post('password')));
    if($cek > 0){
      $data_session = array(
        'nama'=>$user,
        'status'=> "login"
      );
      $this->session->set_userdata($data_session);
      redirect(base_url('index.php/admin'));
    }else{
      echo "Username dan password salah.";
      // echo $cek->num_rows();
    }
  }

  public function logout(){
    $this->session->sess_destroy();
    redirect(base_url('login'));
  }
}

 ?>
