<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MBimbel extends CI_Model
{

    public $nama_bimbel;

    public function getAll()
    {
        $query = $this->db->get('tb_bimbel');
        return $query->result_array();
    }

    public function getById($id)
    {
        $query = $this->db->get_where('tb_bimbel', ['id_bimbel' => $id]);
        return $query->row_array();
    }

    public function insert()
    {
        $post = $this->input->post();
        $this->nama_bimbel = $post['nama'];

        if ($this->db->insert('tb_bimbel', $this)) {
            return true;
        } else {
            return false;
        }
    }

    public function update($id)
    {
        $post = $this->input->post();
        $this->nama_bimbel = $post['nama'];

        if ($this->db->update('tb_bimbel', $this, ['id_bimbel' => $id])) {
            return true;
        } else {
            return false;
        }
    }

    public function delete($id)
    {
        if ($this->db->delete('tb_bimbel', ['id_bimbel' => $id])) {
            return true;
        } else {
            return false;
        }
    }
}
