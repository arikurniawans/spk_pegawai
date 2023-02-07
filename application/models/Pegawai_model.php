<?php

class Pegawai_model extends CI_Model
{

    public function createPegawai($data)
    {
        $pegawai = $this->db->insert('pegawai_tb',$data);
        return $pegawai;
    }

    public function showPegawai()
    {
        $this->db->order_by('idpegawai','DESC');
        $query = $this->db->get('pegawai_tb');        
        return $query;
    }

    public function detailPegawai($nip)
    {
        $query = $this->db->get_where('pegawai_tb', array('nip' => $nip));        
        return $query;
    }

    public function editPegawai($id,$data)
    {
        $this->db->where('idpegawai',$id);
        $this->db->update('pegawai_tb',$data);
        return true;
    }

    public function deletePegawai($id)
    {
        $this->db->where('idpegawai',$id);
        $this->db->delete('pegawai_tb');
        return true;
    }

}
