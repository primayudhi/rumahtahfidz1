<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

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
		 $this->load->model('Admin_model');
	 }

	public function index()
	{
		$data = array(
			'data_admin' => $this->Admin_model->get_all_admin()
		);

		$this->load->view('Admin/admin_list', $data);
	}

	

	public function murid_list()
	{
		$data = array(
			'data_murid' => $this->Admin_model->get_all_murid()
		);

		$this->load->view('Admin/murid_list', $data);
	}

	public function hapus_admin($id_user)
	{
		$this->Admin_model->delete_admin($id_user);

		redirect(site_url('Admin'));
	}

	public function tambah_murid_admin()
	{
		$data = array(
			'action' => site_url('Admin/tambah_murid_aksi')
		);

		$this->load->view('admin/form_tambah_murid',$data);
	}

	public function _rules() 
	{
		$this->form_validation->set_rules('nama_murid','Nama Murid','trim|required');
		$this->form_validation->set_rules('tempat_lahir','Tempat Lahir','trim|required');
		$this->form_validation->set_rules('tanggal_lahir','Tanggal Lahir','trim|required');
		$this->form_validation->set_rules('jk','Jenis Kelamin','trim|required');
		$this->form_validation->set_rules('alamat','Alamat Murid','trim|required');
		$this->form_validation->set_rules('foto','Upload Foto Murid','trim|required');
		$this->form_validation->set_rules('no_telepon','No Telepon','trim|required');
		$this->form_validation->set_rules('nama_ibu','Nama Ibu','trim|required');
		$this->form_validation->set_rules('nama_ayah','Nama Ayah','trim|required');
		$this->form_validation->set_rules('username','Username','trim|required');
		$this->form_validation->set_rules('password_murid','Password Murid','trim|required');
		$this->form_validation->set_rules('hak_akses','Hak Akses','trim|required');
		$this->form_validation->set_rules('aktif','Status Aktif','trim|required');



	}

	public function tambah_murid_aksi()
	{
		$this->_rules();
		if($this->form_validation->run() == FALSE) {
			$this->tambah_murid_admin();
		} else{
			$data = array(
				'nama_murid' => $this->input->post('nama_murid'),
				'tempat_lahir' => $this->input->post('tempat_lahir'),
				'tanggal_lahir' => $this->input->post('tanggal_lahir'),
				'jk' => $this->input->post('jk'),
				'alamat' => $this->input->post('alamat'),
				'foto' => $this->input->post('foto'),
				'no_telepon' => $this->input->post('no_telepon'),
				'nama_ibu' => $this->input->post('nama_ibu'),
				'nama_ayah' => $this->input->post('nama_ayah'),
				'username' => $this->input->post('username'),
				'password_murid' => $this->input->post('password_murid'),
				'hak_akses' => $this->input->post('hak_akses'),
				'aktif' => $this->input->post('aktif'),
			);

			$this->Admin_model->insert_murid($data);
			redirect(site_url('Admin/murid_list'));
		}
	}
}
