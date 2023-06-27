<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Rekomendasi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('MKos');
        $this->load->model('MDetailkos');
        $this->load->model('MKriteria');
        $this->load->model('MDetailkriteria');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $getKos = $this->MKos->getAll();

        $bobot = array();
        $bobotHasil = array();

        foreach ($getKos as $kos) {
            $id_kos = $kos['id_kos'];
            $getDetailkos = $this->MDetailkos->getByIdKos($id_kos);
            foreach ($getDetailkos as $detKos) {
                $bobot[] = $this->MDetailkriteria->calcBobot($detKos['id_kriteria'], $detKos['value']);
            }

            $getKriteria = $this->MKriteria->getAll();
            $dataHasil = [
                'id_user' => $this->session->userdata('id_user'),
                'id_kos' => $kos['id_kos'],
                'status_hasil' => 'ok'
            ];
            $cekHasil = $this->db->get_where('tb_hasil', ['id_user' => $this->session->userdata('id_user'), 'id_kos' => $kos['id_kos']])->row_array();
            if ($cekHasil) {
                $insertHasil = $this->db->update('tb_hasil', $dataHasil, ['id_hasil' => $cekHasil['id_hasil']]);
                $id_hasil = $cekHasil['id_hasil'];
            } else {
                $insertHasil = $this->db->insert('tb_hasil', $dataHasil);
                $id_hasil = $this->db->insert_id();
            }
            foreach ($getKriteria as $kriteria) {
                foreach ($bobot as $bbt) {
                    // echo json_encode($bbt[0]['id_kriteria']);
                    // echo json_encode($bbt[0]['value']);
                    // die;
                    if ($bbt[0]['id_kriteria'] == $kriteria['id_kriteria']) {
                        $bobotKrit = $kriteria['bobot_kriteria'] / 2 * 10;
                        if ($bbt[0]['bobot_detail_kriteria'] == 5) {
                            $bobotKos = (float)$kriteria['bobot_kriteria'];
                        } else {
                            $bobotKos = $bbt[0]['bobot_detail_kriteria'] / $bobotKrit;
                        }

                        $bobotHasil = [
                            'id_hasil' => $id_hasil,
                            'id_kriteria' => $kriteria['id_kriteria'],
                            'bobot_hasil' => $bobotKos
                        ];
                        $cekDetHasil = $this->db->get_where('tb_detail_hasil', ['id_hasil' => $id_hasil, 'id_kriteria' => $kriteria['id_kriteria']])->row_array();
                        if ($cekDetHasil) {
                            $insertDetHasil = $this->db->update('tb_detail_hasil', $bobotHasil, ['id_detail_hasil' => $cekDetHasil['id_detail_hasil']]);
                        } else {
                            $insertDetHasil = $this->db->insert('tb_detail_hasil', $bobotHasil);
                        }
                    }
                }
            }
        }

        // echo json_encode($bobot);
        // die;

        $id_user = $this->session->userdata('id_user');
        $data['kos'] = $this->db->query("SELECT tb_kos.id_kos, tb_kos.foto_kos, nama_kos, SUM(tb_detail_hasil.bobot_hasil) AS bobot_total, tb_hasil.status_hasil, tb_hasil.id_hasil FROM tb_kos JOIN tb_hasil ON tb_hasil.id_kos = tb_kos.id_kos JOIN tb_detail_hasil ON tb_detail_hasil.id_hasil = tb_hasil.id_hasil WHERE tb_hasil.id_user = '$id_user' GROUP BY tb_kos.id_kos ORDER BY bobot_total DESC LIMIT 6")->result_array();

        $data['rekomend'] = $this->db->query("SELECT tb_kos.id_kos, tb_kos.foto_kos, nama_kos, SUM(tb_detail_hasil.bobot_hasil) AS bobot_total, tb_hasil.status_hasil, tb_hasil.id_hasil FROM tb_kos JOIN tb_hasil ON tb_hasil.id_kos = tb_kos.id_kos JOIN tb_detail_hasil ON tb_detail_hasil.id_hasil = tb_hasil.id_hasil WHERE tb_hasil.id_user = '$id_user' GROUP BY tb_kos.id_kos ORDER BY bobot_total DESC LIMIT 1")->row_array();

        $this->load->view('Themes/Header', $data);
        $this->load->view('Themes/Menu');
        $this->load->view('Rekomendasi/Index');
        $this->load->view('Themes/Footer');
        $this->load->view('Themes/Scripts');
    }

    public function detail($id)
    {
        $data['kos'] = $this->MKos->getById($id);
        $this->db->join('tb_kriteria', 'tb_kriteria.id_kriteria = tb_detail_kos.id_kriteria');
        $data['detKos'] = $this->db->get_where('tb_detail_kos', ['id_kos' => $id])->result_array();
        $this->load->view('Themes/Header', $data);
        $this->load->view('Themes/Menu');
        $this->load->view('Rekomendasi/Detail');
        $this->load->view('Themes/Footer');
        $this->load->view('Themes/Scripts');
    }
}
