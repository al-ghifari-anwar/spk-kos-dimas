<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kos extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('MKos');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['kos'] = $this->MKos->getAll();
        $this->load->view('Themes/Header', $data);
        $this->load->view('Themes/Menu');
        $this->load->view('Kos/Index');
        $this->load->view('Themes/Footer');
        $this->load->view('Themes/Scripts');
    }

    public function form($id = null)
    {
        if ($id) {
            $data['kos'] = $this->MKos->getById($id);
            $data['action'] = base_url('update-kos/') . $id;
        } else {
            $data['kos'] = ['id_kos' => '', 'nama_kos' => '', 'lat_kos' => '', 'long_kos' => '', 'harga_kos' => '', 'fasilitas_kos' => '', 'alamat_kos' => '', 'foto_kos' => ''];
            $data['action'] = base_url('add-kos');
        }

        $this->form_validation->set_rules('nama', 'Nama', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('Themes/Header', $data);
            $this->load->view('Themes/Menu');
            $this->load->view('Kos/Form');
            $this->load->view('Themes/Footer');
            $this->load->view('Themes/Scripts');
        } else {
            if ($id) {
                $res = $this->MKos->update($id);
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('kos');
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('kos');
                }
            } else {
                $res = $this->MKos->insert();
                if ($res) {
                    $this->session->set_flashdata('success', 'Berhasil menyimpan data');
                    redirect('kos');
                } else {
                    $this->session->set_flashdata('fail', 'Gagal menyimpan data');
                    redirect('kos');
                }
            }
        }
    }

    public function delete($id)
    {
        $res = $this->MKos->delete($id);
        if ($res) {
            $this->session->set_flashdata('success', 'Berhasil menghapus data');
            redirect('kos');
        } else {
            $this->session->set_flashdata('fail', 'Gagal menghapus data');
            redirect('kos');
        }
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
                redirect('kos');
            } else {
                // Validasi apakah file yang diupload benar-benar file csv.
                if (strtolower(end($ekstensi)) === 'csv' && $_FILES["csv"]["size"] > 0) {

                    $i = 0;
                    $handle = fopen($file, "r");
                    while (($row = fgetcsv($handle, 10000, ';'))) {
                        $i++;
                        if ($i == 1) continue;

                        // Data yang akan disimpan ke dalam databse
                        $data = [
                            'nama_kos' => $row[0],
                            'alamat_kos' => $row[1]
                        ];

                        // Simpan data ke database.
                        $this->db->insert('tb_kos', $data);
                    }

                    fclose($handle);
                    redirect('kos');
                } else {
                    $this->session->set_flashdata('fail', 'Format file tidak valid');
                    redirect('kos');
                }
            }
        }
    }
}
