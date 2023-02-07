<?php

class Alternatif_model extends CI_Model
{
    public function createAlternatif($data)
    {
        $jabatan = $this->db->insert('alternatif',$data);
        return $jabatan;
    }

    public function showAlternatif()
    {
        $query = $this->db->get('v_alternatif');        
        return $query;
    }

    public function deleteAlternatif($id)
    {
        $this->db->where('id_nilai',$id);
        $this->db->delete('alternatif');
        return true;
    }

    // public function showBobot()
    // {
    //     $this->db->order_by('id_nilai','ASC');
    //     $query = $this->db->get_where('bobot_nilai');        
    //     return $query;
    // }

    public function editAlternatif($id,$data)
    {
        $this->db->where('id_nilai',$id);
        $this->db->update('alternatif',$data);
        return true;
    }

    // public function showJumlah()
    // {
    //     $this->db->select('SUM(nilai) AS n_kriteria');
    //     $query = $this->db->from('kriteria');        
    //     return $query;
    // }
    
    // public function detailKriteria($id)
    // {
    //     $this->db->order_by('id_kriteria','ASC');
    //     $query = $this->db->get_where('kriteria', array('id_kriteria' => $id));        
    //     return $query;
    // }

}
