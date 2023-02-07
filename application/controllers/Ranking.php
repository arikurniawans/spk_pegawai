<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ranking extends CI_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url'));
        $this->load->library(array('form_validation','pagination','session'));
        $this->load->model('Alternatif_model');
        $this->load->model('Ranking_model');

    }

    public function index()
    {
        $data['alternatif'] = $this->Alternatif_model->showAlternatif()->result();
        $data['ranking'] = $this->Ranking_model->showRatingKecocokan()->result();
        $data['maxc1'] = $this->Ranking_model->showMaxC1()->result();
        $data['maxc2'] = $this->Ranking_model->showMaxC2()->result();
        $data['maxc3'] = $this->Ranking_model->showMaxC3()->result();
        $data['maxc4'] = $this->Ranking_model->showMaxC4()->result();

        $this->load->view('parts/header');
        $this->load->view('parts/sidebar');
        $this->load->view('v_ranking-saw', $data);
        $this->load->view('parts/footer');
    }

}