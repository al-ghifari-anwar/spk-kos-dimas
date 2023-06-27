<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MFasilitas extends CI_Model
{

    public $nama_fasilitas;

    public function getAll()
    {
        $query = $this->db->get('tb_fasilitas');
        return $query->result_array();
    }

    public function getById($id)
    {
        $query = $this->db->get_where('tb_fasilitas', ['id_fasilitas' => $id]);
        return $query->row_array();
    }

    public function insert()
    {
        $post = $this->input->post();
        $this->nama_fasilitas = $post['nama'];

        if ($this->db->insert('tb_fasilitas', $this)) {
            return true;
        } else {
            return false;
        }
    }

    public function update($id)
    {
        $post = $this->input->post();
        $this->nama_fasilitas = $post['nama'];

        if ($this->db->update('tb_fasilitas', $this, ['id_fasilitas' => $id])) {
            return true;
        } else {
            return false;
        }
    }

    public function delete($id)
    {
        if ($this->db->delete('tb_fasilitas', ['id_fasilitas' => $id])) {
            return true;
        } else {
            return false;
        }
    }
}
