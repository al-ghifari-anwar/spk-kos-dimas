<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Fasilitas extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('MFasilitas');
        $this->load->model('MKos');
        $this->load->model('MKriteria');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['fasilitas'] = $this->MFasilitas->getAll();
        $this->load->view('Themes/Header', $data);
        $this->load->view('Themes/Menu');
        $this->load->view('Fasilitas/Index');
        $this->load->view('Themes/Footer');
        $this->load->view('Themes/Scripts');
    }

    public function form($id = null)
    {
        if ($id) {
            $data['fasilitas'] = $this->MFasilitas->getById($id);
            $data['action'] = base_url('update-fasilitas/') . $id;
        } else {
            $data['fasilitas'] = ['id_fasilitas' => '', 'nama_fasilitas' => ''];
            $data['action'] = base_url('add-fasilitas');
        }

        $this->form_validation->set_rules('nama', 'Nama', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('Themes/Header', $data);
            $this->load->view('Themes/Menu');
            $this->load->view('Fasilitas/Form');
            $this->load->view('Themes/Footer');
            $this->load->view('Themes/Scripts');
        } else {
            if ($id) {
                $res = $this->MFasilitas->update($id);
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('fasilitas');
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('fasilitas');
                }
            } else {
                $res = $this->MFasilitas->insert();
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('fasilitas');
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('fasilitas');
                }
            }
        }
    }

    public function delete($id)
    {
        $res = $this->MFasilitas->delete($id);
        if ($res) {
            $this->session->set_flashdata('success', 'Berhasil menghapus data');
            redirect('fasilitas');
        } else {
            $this->session->set_flashdata('fail', 'Gagal menghapus data');
            redirect('fasilitas');
        }
    }

    public function calculate()
    {
        $getKos = $this->MKos->getAll();

        foreach ($getKos as $kos) {
            $id_kos = $kos['id_kos'];
            $fasilitas = $this->db->query("SELECT COUNT(*) AS jml FROM tb_fasilitas JOIN tb_jarak_fasilitas ON tb_fasilitas.id_fasilitas = tb_jarak_fasilitas.id_fasilitas WHERE tb_jarak_fasilitas.id_kos = '$id_kos' AND tb_jarak_fasilitas.jarak < 0.21")->row_array();

            $kriteria = $this->MKriteria->getByKode('fasilitas');


            $dataCek = [
                'id_kriteria' => $kriteria['id_kriteria'],
                'id_kos' => $id_kos
            ];

            $data = [
                'id_kriteria' => $kriteria['id_kriteria'],
                'id_kos' => $id_kos,
                'value' => $fasilitas['jml']
            ];
            // echo json_encode($fasilitas);

            $cek = $this->db->get_where('tb_detail_kos', $dataCek)->row_array();

            if ($cek) {
                $res = $this->db->update('tb_detail_kos', $data, $data);
            } else {
                $res = $this->db->insert('tb_detail_kos', $data);
            }
        }

        $this->session->set_flashdata('success', 'Berhasil menyimpan data');
        redirect('fasilitas');
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
                redirect('fasilitas');
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
                            'nama_fasilitas' => $row[0]
                        ];

                        // Simpan data ke database.
                        $this->db->insert('tb_fasilitas', $data);
                    }

                    fclose($handle);
                    redirect('fasilitas');
                } else {
                    $this->session->set_flashdata('fail', 'Format file tidak valid');
                    redirect('fasilitas');
                }
            }
        }
    }
}
