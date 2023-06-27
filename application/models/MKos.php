<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MKos extends CI_Model
{

    public $nama_kos;
    public $lat_kos;
    public $long_kos;
    public $alamat_kos;
    public $foto_kos;

    public function getAll()
    {
        $query = $this->db->get('tb_kos', 20);
        return $query->result_array();
    }

    public function getById($id)
    {
        $query = $this->db->get_where('tb_kos', ['id_kos' => $id]);
        return $query->row_array();
    }

    public function insert()
    {
        $post = $this->input->post();
        $this->nama_kos = $post['nama'];
        $this->lat_kos = $post['lat'];
        $this->long_kos = $post['long'];
        $this->alamat_kos = $post['alamat'];

        $file_name = 'Docs_' . $this->nama_kos . '_'  . date('dmY');
        $config['upload_path']          = FCPATH . '/assets/foto-kos/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        $config['max_size']             = 5069;
        $config['file_name']            = $file_name;
        $config['overwrite']            = true;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('foto')) {
            $uploaded_data = $this->upload->data();

            $this->foto_kos = $uploaded_data['file_name'];

            if ($this->db->insert('tb_kos', $this)) {
                return true;
            } else {
                return false;
            }
        } else {
            $this->session->set_flashdata('fail', $this->upload->display_errors());
            redirect('kos');
        }
    }

    public function update($id)
    {
        $post = $this->input->post();
        $this->nama_kos = $post['nama'];
        $this->lat_kos = $post['lat'];
        $this->long_kos = $post['long'];
        $this->alamat_kos = $post['alamat'];

        $this->nama_kos = $post['nama'];
        $this->lat_kos = $post['lat'];
        $this->long_kos = $post['long'];
        $this->alamat_kos = $post['alamat'];

        $file_name = 'Docs_' . $this->nama_kos . '_'  . date('dmY');
        $config['upload_path']          = FCPATH . '/assets/foto-kos/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        $config['max_size']             = 5069;
        $config['file_name']            = $file_name;
        $config['overwrite']            = true;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('foto')) {
            $uploaded_data = $this->upload->data();

            $this->foto_kos = $uploaded_data['file_name'];

            if ($this->db->update('tb_kos', $this, ['id_kos' => $id])) {
                return true;
            } else {
                return false;
            }
        } else {
            $this->session->set_flashdata('fail', $this->upload->display_errors());
            redirect('kos');
        }
    }

    public function delete($id)
    {
        if ($this->db->delete('tb_kos', ['id_kos' => $id])) {
            return true;
        } else {
            return false;
        }
    }
}
