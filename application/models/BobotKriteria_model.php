<?php

class BobotKriteria_model extends CI_Model
{

    public function createBobotKriteria($data)
    {
        $jabatan = $this->db->insert('bobot_kriteria',$data);
        return $jabatan;
    }

    public function showBobotKriteria($kriteria)
    {
        $query = $this->db->get_where('v_bobot_nilai_kriteria', array('kriteria' => $kriteria));        
        return $query;
    }

    public function showSubkriteria($kriteria)
    {
        $query = $this->db->get_where('v_subkriteria', array('kriteria' => $kriteria));        
        return $query;
    }

    public function editBobotKriteria($id, $data)
    {
        $this->db->where('id_bobot',$id);
        $this->db->update('bobot_kriteria',$data);
        return true;
    }

    public function deleteBobotKriteria($id)
    {
        $this->db->where('id_bobot',$id);
        $this->db->delete('bobot_kriteria');
        return true;
    }

}
