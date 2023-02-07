<?php

class Pengguna_model extends CI_Model
{

    public function createPengguna($data)
    {
        $jabatan = $this->db->insert('pengguna',$data);
        return $jabatan;
    }

    public function showPengguna()
    {
        $this->db->order_by('id_pengguna','DESC');
        $query = $this->db->get_where('pengguna', array('user_status' => 'pengguna'));        
        return $query;
    }

    public function editPengguna($id,$data)
    {
        $this->db->where('id_pengguna',$id);
        $this->db->update('pengguna',$data);
        return true;
    }

    public function deletePengguna($id)
    {
        $this->db->where('id_pengguna',$id);
        $this->db->delete('pengguna');
        return true;
    }

}
