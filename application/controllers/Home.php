<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('id_user') == null) {
            redirect('login');
        }
        $this->load->model('MKos');
        $this->load->model('MKriteria');
        $this->load->model('MBimbel');
    }

    function distance($lat1, $lon1, $lat2, $lon2, $unit)
    {
        $theta = $lon1 - $lon2;
        $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
        $dist = acos($dist);
        $dist = rad2deg($dist);
        $miles = $dist * 60 * 1.1515;
        $unit = strtoupper($unit);

        if ($unit == "K") {
            return ($miles * 1.609344);
        } else if ($unit == "N") {
            return ($miles * 0.8684);
        } else {
            return $miles;
        }
    }

    public function index()
    {
        $data['jmlKos'] = $this->db->query("SELECT COUNT(*) AS jml FROM tb_kos")->row_array();
        $data['jmlUsr'] = $this->db->query("SELECT COUNT(*) AS jml FROM tb_user WHERE level_user = 'pengguna'")->row_array();
        $latUsr = $this->session->userdata('lat');
        $longUsr = $this->session->userdata('long');
        if ($this->session->userdata('level_user') == 'pengguna') {
            $getKos = $this->MKos->getAll();
            foreach ($getKos as $kos) {
                $id_kos = $kos['id_kos'];
                $jarak = $this->distance($kos['lat_kos'], $kos['long_kos'], $latUsr, $longUsr, 'K');
                $kriteria = $this->MKriteria->getByKode('lokasi');

                $dataCek = [
                    'id_kriteria' => $kriteria['id_kriteria'],
                    'id_kos' => $id_kos
                ];

                $data = [
                    'id_kriteria' => $kriteria['id_kriteria'],
                    'id_kos' => $id_kos,
                    'value' => $jarak
                ];

                $cek = $this->db->get_where('tb_detail_kos', $dataCek)->row_array();

                if ($cek) {
                    $res = $this->db->update('tb_detail_kos', $data, $data);
                } else {
                    $res = $this->db->insert('tb_detail_kos', $data);
                }
            }
        }
        $this->load->view('Themes/Header', $data);
        $this->load->view('Themes/Menu');
        $this->load->view('Home/Index');
        $this->load->view('Themes/Footer');
        $this->load->view('Themes/Scripts');
    }
}
