<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Guru extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */

	 public function __construct()
	 {
		 parent::__construct();
		 $this->load->model('Guru_model');
	 }

	public function index()
	{
		$data = array(
			'data_guru' => $this->Guru_model->get_all_guru()
		);

		$this->load->view('guru/guru_list', $data);
	}

	public function hapus_guru($id_guru)
	{
		$this->Guru_model->delete_guru($id_guru);

		redirect(site_url('Guru'));
	}
}
