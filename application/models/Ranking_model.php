<?php

class Ranking_model extends CI_Model
{
    public function showRatingKecocokan()
    {
        $query = $this->db->get('v_rating_kecocokan');        
        return $query;
    }

    public function showMaxC1()
    {
        $this->db->select('MAX(NC1) AS max_c1');
        $this->db->from('v_rating_kecocokan');
        $query = $this->db->get();
        return $query;
    }

    public function showMaxC2()
    {
        $this->db->select('MAX(NC2) AS max_c2');
        $this->db->from('v_rating_kecocokan');
        $query = $this->db->get();
        return $query;
    }

    public function showMaxC3()
    {
        $this->db->select('MAX(NC3) AS max_c3');
        $this->db->from('v_rating_kecocokan');
        $query = $this->db->get();
        return $query;
    }

    public function showMaxC4()
    {
        $this->db->select('MAX(NC4) AS max_c4');
        $this->db->from('v_rating_kecocokan');
        $query = $this->db->get();
        return $query;
    }


}
