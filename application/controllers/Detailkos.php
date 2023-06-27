<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Detailkos extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('MDetailkos');
        $this->load->model('MKriteria');
        $this->load->library('form_validation');
    }

    public function index($id_kos)
    {
        $data['id_kos'] = $id_kos;
        $data['kos'] = $this->MDetailkos->getAll($id_kos);
        $this->load->view('Themes/Header', $data);
        $this->load->view('Themes/Menu');
        $this->load->view('Detailkos/Index');
        $this->load->view('Themes/Footer');
        $this->load->view('Themes/Scripts');
    }

    public function form($id_kos, $id = null)
    {
        $data['id_kos'] = $id_kos;
        $data['kriteria'] = $this->MKriteria->getAll();
        if ($id) {
            $data['detailkos'] = $this->MDetailkos->getById($id);
            $data['action'] = base_url('update-detailkos/') . $id_kos . '/' . $id;
        } else {
            $data['detailkos'] = ['id_kos' => '', 'id_kriteria' => '', 'value' => ''];
            $data['action'] = base_url('add-detailkos/') . $id_kos;
        }

        $this->form_validation->set_rules('value', 'Value', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('Themes/Header', $data);
            $this->load->view('Themes/Menu');
            $this->load->view('Detailkos/Form');
            $this->load->view('Themes/Footer');
            $this->load->view('Themes/Scripts');
        } else {
            if ($id) {
                $res = $this->MDetailkos->update($id);
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('detailkos/' . $id_kos);
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('detailkos/' . $id_kos);
                }
            } else {
                $res = $this->MDetailkos->insert();
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('detailkos/' . $id_kos);
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('detailkos/' . $id_kos);
                }
            }
        }
    }

    public function delete($id_kos, $id = null)
    {
        $res = $this->MDetailkos->delete($id);
        if ($res) {
            $this->session->set_flashdata('success', 'Berhasil menghapus data');
            redirect('kos' . $id_kos);
        } else {
            $this->session->set_flashdata('fail', 'Gagal menghapus data');
            redirect('kos' . $id_kos);
        }
    }
}
