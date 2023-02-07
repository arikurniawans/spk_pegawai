<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alternatif extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','pagination','session'));
        $this->load->model('Alternatif_model');
        $this->load->model('Pegawai_model');
        $this->load->model('Kriteria_model');
        $this->load->model('BobotKriteria_model');

    }

    public function index()
    {
        $data['alternatif'] = $this->Alternatif_model->showAlternatif()->result();
        $data['pegawai'] = $this->Pegawai_model->showPegawai()->result();
        $data['c1'] = $this->Kriteria_model->showKriteriaC1()->result();
        $data['c2'] = $this->Kriteria_model->showKriteriaC2()->result();
        $data['c3'] = $this->Kriteria_model->showKriteriaC3()->result();
        $data['c4'] = $this->Kriteria_model->showKriteriaC4()->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_alternatif', $data);
        $this->load->view('parts/footer');
    }

    public function create()
    {
        $data = array(
            'idpegawai' => $this->input->post('pegawai'),
            'c1' => $this->input->post('c1'),
            'c2' => $this->input->post('c2'),
            'c3' => $this->input->post('c3'),
            'c4' => $this->input->post('c4'),
        );

        $simpan = $this->Alternatif_model->createAlternatif($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('alternatif');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('alternatif');
        }
    }

    public function edit()
    {
        $id = $this->input->post('id');

        $data = array(
            'idpegawai' => $this->input->post('pegawai'),
            'c1' => $this->input->post('c1'),
            'c2' => $this->input->post('c2'),
            'c3' => $this->input->post('c3'),
            'c4' => $this->input->post('c4'),
        );

        $simpan = $this->Alternatif_model->editAlternatif($id, $data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('alternatif');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('alternatif');
        }
    }

    public function delete()
    {
        $id = $this->input->post('id');
        
        $hapus = $this->Alternatif_model->deleteAlternatif($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('alternatif');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('alternatif');
        }
    }

}