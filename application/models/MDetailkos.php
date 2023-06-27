<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MDetailkos extends CI_Model
{

    public $id_kos;
    public $id_kriteria;
    public $value;

    public function getAll($id_kos)
    {
        $this->db->join('tb_kriteria', 'tb_detail_kos.id_kriteria = tb_kriteria.id_kriteria');
        $query = $this->db->get_where('tb_detail_kos', ['id_kos' => $id_kos]);
        return $query->result_array();
    }

    public function getById($id)
    {
        $this->db->join('tb_kriteria', 'tb_detail_kos.id_kriteria = tb_kriteria.id_kriteria');
        $query = $this->db->get_where('tb_detail_kos', ['id_detail_kos' => $id]);
        return $query->row_array();
    }

    public function getByIdKos($id)
    {
        $this->db->join('tb_kriteria', 'tb_detail_kos.id_kriteria = tb_kriteria.id_kriteria');
        $query = $this->db->get_where('tb_detail_kos', ['id_kos' => $id]);
        return $query->result_array();
    }

    public function insert()
    {
        $post = $this->input->post();
        $this->id_kos = $post['id_kos'];
        $this->id_kriteria = $post['id_kriteria'];
        $this->value = $post['value'];

        if ($this->db->insert('tb_detail_kos', $this)) {
            return true;
        } else {
            return false;
        }
    }

    public function update($id)
    {
        $post = $this->input->post();
        $this->id_kos = $post['id_kos'];
        $this->id_kriteria = $post['id_kriteria'];
        $this->value = $post['value'];

        if ($this->db->update('tb_detail_kos', $this, ['id_detail_kos' => $id])) {
            return true;
        } else {
            return false;
        }
    }

    public function delete($id)
    {
        if ($this->db->delete('tb_detail_kos', ['id_detail_kos' => $id])) {
            return true;
        } else {
            return false;
        }
    }
}
