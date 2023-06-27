<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Bimbel extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('MBimbel');
        $this->load->model('MKos');
        $this->load->model('MKriteria');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['bimbel'] = $this->MBimbel->getAll();
        $this->load->view('Themes/Header', $data);
        $this->load->view('Themes/Menu');
        $this->load->view('Bimbel/Index');
        $this->load->view('Themes/Footer');
        $this->load->view('Themes/Scripts');
    }

    public function form($id = null)
    {
        if ($id) {
            $data['bimbel'] = $this->MBimbel->getById($id);
            $data['action'] = base_url('update-bimbel/') . $id;
        } else {
            $data['bimbel'] = ['id_bimbel' => '', 'nama_bimbel' => ''];
            $data['action'] = base_url('add-bimbel');
        }

        $this->form_validation->set_rules('nama', 'Nama', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('Themes/Header', $data);
            $this->load->view('Themes/Menu');
            $this->load->view('Bimbel/Form');
            $this->load->view('Themes/Footer');
            $this->load->view('Themes/Scripts');
        } else {
            if ($id) {
                $res = $this->MBimbel->update($id);
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('bimbel');
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('bimbel');
                }
            } else {
                $res = $this->MBimbel->insert();
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('bimbel');
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('bimbel');
                }
            }
        }
    }

    public function delete($id)
    {
        $res = $this->MBimbel->delete($id);
        if ($res) {
            $this->session->set_flashdata('success', 'Berhasil menghapus data');
            redirect('bimbel');
        } else {
            $this->session->set_flashdata('fail', 'Gagal menghapus data');
            redirect('bimbel');
        }
    }

    public function calculate()
    {
        $getKos = $this->MKos->getAll();

        foreach ($getKos as $kos) {
            $id_kos = $kos['id_kos'];
            $bimbel = $this->db->query("SELECT tb_bimbel.id_bimbel, tb_jarak_bimbel.id_kos, MIN(jarak) AS jarak FROM tb_bimbel JOIN tb_jarak_bimbel ON tb_bimbel.id_bimbel = tb_jarak_bimbel.id_bimbel WHERE tb_jarak_bimbel.id_kos = '$id_kos'")->row_array();

            $kriteria = $this->MKriteria->getByKode('bimbel');

            $dataCek = [
                'id_kriteria' => $kriteria['id_kriteria'],
                'id_kos' => $id_kos
            ];

            $data = [
                'id_kriteria' => $kriteria['id_kriteria'],
                'id_kos' => $id_kos,
                'value' => $bimbel['jarak']
            ];

            $cek = $this->db->get_where('tb_detail_kos', $dataCek)->row_array();

            if ($cek) {
                $res = $this->db->update('tb_detail_kos', $data, $data);
            } else {
                $res = $this->db->insert('tb_detail_kos', $data);
            }
        }

        $this->session->set_flashdata('success', 'Berhasil menyimpan data');
        redirect('bimbel');
    }

    public function import()
    {
        if (isset($_POST['import'])) {

            $file = $_FILES['csv']['tmp_name'];

            // Medapatkan ekstensi file csv yang akan diimport.
            $ekstensi  = explode('.', $_FILES['csv']['name']);

            // Tampilkan peringatan jika submit tanpa memilih menambahkan file.
            if (empty($file)) {
                $this->session->set_flashdata('fail', 'File tidak boleh kosong');
                redirect('bimbel');
            } else {
                // Validasi apakah file yang diupload benar-benar file csv.
                if (strtolower(end($ekstensi)) === 'csv' && $_FILES["csv"]["size"] > 0) {

                    $i = 0;
                    $handle = fopen($file, "r");
                    while (($row = fgetcsv($handle, 2048))) {
                        $i++;
                        if ($i == 1) continue;

                        // Data yang akan disimpan ke dalam databse
                        $data = [
                            'nama_bimbel' => $row[0]
                        ];

                        // Simpan data ke database.
                        $this->db->insert('tb_bimbel', $data);
                    }

                    fclose($handle);
                    redirect('bimbel');
                } else {
                    $this->session->set_flashdata('fail', 'Format file tidak valid');
                    redirect('bimbel');
                }
            }
        }
    }
}
