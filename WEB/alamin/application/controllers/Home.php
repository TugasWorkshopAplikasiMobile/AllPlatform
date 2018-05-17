<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends AUTH_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->helper('html');
		$this->load->model('M_siswa');
	}

	public function index() {
		$data['jml_siswa'] = $this->M_siswa->total_rows()->result();
		$this->load->view('home.php');

	}
}


/* End of file Home.php */
/* Location: ./application/controllers/Home.php */
