<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengguna extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','pagination','session'));
        $this->load->model('Pengguna_model');

    }

    public function index()
    {
        $data['pengguna'] = $this->Pengguna_model->showPengguna()->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_pengguna', $data);
        $this->load->view('parts/footer');
    }

    public function create()
    {
        $data = array(
            'nama' => $this->input->post('nama'),
            'jabatan' => $this->input->post('jabatan'),
            'no_telpon' => $this->input->post('telp'),
            'username' => $this->input->post('username'),
            'user_status' => 'pengguna',
            'password' => password_hash($this->input->post('password'), PASSWORD_BCRYPT)
        );
        $simpan = $this->Pengguna_model->createPengguna($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('pengguna');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('pengguna');
        }

    }

    public function edit()
    {
        $id = $this->input->post('id');

        $data = array(
            'nama' => $this->input->post('nama'),
            'jabatan' => $this->input->post('jabatan'),
            'no_telpon' => $this->input->post('telp'),
            'username' => $this->input->post('username'),
            'password' => password_hash($this->input->post('password'), PASSWORD_BCRYPT)
        );
        $ubah = $this->Pengguna_model->editPengguna($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('pengguna');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('pengguna');
        }
    }

    public function delete()
    {
        $id = $this->input->post('id');
        
        $hapus = $this->Pengguna_model->deletePengguna($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('pengguna');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('pengguna');
        }
    }



    }