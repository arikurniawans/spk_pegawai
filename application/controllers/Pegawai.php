<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','pagination','session'));
        $this->load->model('Pegawai_model');

    }

    public function index()
    {
        $data['pegawai'] = $this->Pegawai_model->showPegawai()->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_pegawai', $data);
        $this->load->view('parts/footer');
    }

    public function create()
    {
        $data = array(
            'nip' => $this->input->post('nip'),
            'nama_pegawai' =>$this->input->post('nama_pegawai')
        );

        $cek = $this->Pegawai_model->detailPegawai($this->input->post('nip'));
        if($cek->num_rows() > 0){
            $this->session->set_flashdata('message1','error'); 
            redirect('pegawai');
        }else{
            
            $simpan = $this->Pegawai_model->createPegawai($data);
            if($simpan)
            {
                $this->session->set_flashdata('message','successfull'); 
                redirect('pegawai');
            }
            else
            {
                $this->session->set_flashdata('message','error'); 
                redirect('pegawai');
            }

        }        

    }

    public function edit()
    {
        $id = $this->input->post('id');

        $data = array(
            'nip' => $this->input->post('nip'),
            'nama_pegawai' =>$this->input->post('nama_pegawai')
        );

        $ubah = $this->Pegawai_model->editPegawai($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('pegawai');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('pegawai');
        }

    }

    public function delete()
    {
        $id = $this->input->post('id');
        
        $hapus = $this->Pegawai_model->deletePegawai($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('pegawai');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('pegawai');
        }
    }

}