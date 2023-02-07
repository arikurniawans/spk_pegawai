<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kriteria extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','pagination','session'));
        $this->load->model('Kriteria_model');
        $this->load->model('BobotKriteria_model');

    }

    public function index()
    {
        $data['kriteria_c1'] = $this->Kriteria_model->showKriteriaC1()->result();
        $data['kriteria_c2'] = $this->Kriteria_model->showKriteriaC2()->result();
        $data['kriteria_c3'] = $this->Kriteria_model->showKriteriaC3()->result();
        $data['kriteria_c4'] = $this->Kriteria_model->showKriteriaC4()->result();
        $data['bobot'] = $this->Kriteria_model->showBobot()->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_kriteria', $data);
        $this->load->view('parts/footer');
    }

    public function edit()
    {
        $id = $this->input->post('id');

        $data = array(
            'kriteria' => $this->input->post('kriteria'),
            'keterangan' => $this->input->post('keterangan'),
            'nilai' => $this->input->post('nilai')
        );

        $ubah = $this->Kriteria_model->editKriteria($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('kriteria');
        }

    }

    public function detail($id)
    {
        $data = $this->Kriteria_model->detailKriteria($id)->result();
        $view['id_kriteria'] = $data[0]->id_kriteria;
        $view['kriteria'] = $data[0]->kriteria;
        $view['keterangan'] = $data[0]->keterangan;
        $view['n_kriteria'] = $data[0]->nilai;
        $view['bobot'] = $this->Kriteria_model->showBobot()->result();
        $view['bobot_n_kriteria'] = $this->BobotKriteria_model->showBobotKriteria($data[0]->kriteria)->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_detail-kriteria', $view);
        $this->load->view('parts/footer');
    }

    public function createc1()
    {
        $data = array(
            'sub_kriteria' => $this->input->post('subc1'),
            'id_nilai' =>$this->input->post('r1')
        );

        $simpan = $this->Kriteria_model->createSubkriteriaC1($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('kriteria');
        }

    }

    public function createc2()
    {
        $data = array(
            'sub_kriteria' => $this->input->post('subc2'),
            'id_nilai' =>$this->input->post('r2')
        );

        $simpan = $this->Kriteria_model->createSubkriteriaC2($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('kriteria');
        }

    }

    public function createc3()
    {
        $data = array(
            'sub_kriteria' => $this->input->post('subc3'),
            'id_nilai' =>$this->input->post('r3')
        );

        $simpan = $this->Kriteria_model->createSubkriteriaC3($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('kriteria');
        }

    }

    public function createc4()
    {
        $data = array(
            'sub_kriteria' => $this->input->post('subc4'),
            'id_nilai' =>$this->input->post('r4')
        );

        $simpan = $this->Kriteria_model->createSubkriteriaC4($data);
        if($simpan)
        {
            $this->session->set_flashdata('message','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message','error'); 
            redirect('kriteria');
        }

    }

    public function editc1()
    {
        $id = $this->input->post('id_c1');

        $data = array(
            'sub_kriteria' => $this->input->post('subc1'),
            'id_nilai' =>$this->input->post('r1')
        );

        $ubah = $this->Kriteria_model->editKriteriac1($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('kriteria');
        }

    }

    public function editc2()
    {
        $id = $this->input->post('id_c2');

        $data = array(
            'sub_kriteria' => $this->input->post('subc2'),
            'id_nilai' =>$this->input->post('r2')
        );

        $ubah = $this->Kriteria_model->editKriteriac2($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('kriteria');
        }

    }


    public function editc3()
    {
        $id = $this->input->post('id_c3');

        $data = array(
            'sub_kriteria' => $this->input->post('subc3'),
            'id_nilai' =>$this->input->post('r3')
        );

        $ubah = $this->Kriteria_model->editKriteriac3($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('kriteria');
        }

    }


    public function editc4()
    {
        $id = $this->input->post('id_c4');

        $data = array(
            'sub_kriteria' => $this->input->post('subc4'),
            'id_nilai' =>$this->input->post('r4')
        );

        $ubah = $this->Kriteria_model->editKriteriac4($id, $data);
        if($ubah)
        {
            $this->session->set_flashdata('message2','successfull'); 
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message2','error'); 
            redirect('kriteria');
        }

    }

    public function deletec1()
    {
        $id = $this->input->post('id_c1');
        
        $hapus = $this->Kriteria_model->deletec1($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('kriteria');
        }
    }

    public function deletec2()
    {
        $id = $this->input->post('id_c2');
        
        $hapus = $this->Kriteria_model->deletec2($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('kriteria');
        }
    }

    public function deletec3()
    {
        $id = $this->input->post('id_c3');
        
        $hapus = $this->Kriteria_model->deletec3($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('kriteria');
        }
    }

    public function deletec4()
    {
        $id = $this->input->post('id_c4');
        
        $hapus = $this->Kriteria_model->deletec4($id);
        if($hapus)
        {
            $this->session->set_flashdata('message3','successfull');
            redirect('kriteria');
        }
        else
        {
            $this->session->set_flashdata('message3','error');
            redirect('kriteria');
        }
    }


}