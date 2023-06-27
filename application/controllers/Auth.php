<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('MUser');
        $this->load->library('form_validation');
    }

    public function index()
    {
        if ($this->session->userdata('id_user') != null) {
            redirect('Home');
        }

        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('Auth/Index');
        } else {
            $user = $this->MUser->getForAuth();

            if ($user != false) {
                $dataUser = [
                    'id_user' => $user['id_user'],
                    'nama_user' => $user['nama_user'],
                    'username' => $user['username'],
                    'level_user' => $user['level_user'],
                    'lat' => $user['lat_user'],
                    'long' => $user['long_user']
                ];
                $this->session->set_userdata($dataUser);
                redirect('Home');
            } else {
                $this->session->set_flashdata('fail', 'Akun tidak dapat ditemukan, silahkan mendaftar sebagai calon penerima beasiswa atau hubungi admin');
                redirect('login');
            }
        }
    }

    public function forgetPassword()
    {
        if ($this->session->userdata('id_user') != null) {
            redirect('Home');
        }

        $this->form_validation->set_rules('username', 'Username', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('Auth/Forget');
        } else {
        }
    }

    public function register()
    {
        if ($this->session->userdata('id_user') != null) {
            redirect('Home');
        }

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('Auth/Daftar');
        } else {
            $res = $this->MUser->insert();
            if ($res) {
                $this->session->set_flashdata('success', 'Pendaftaran akun berhasil, silahkan login!');
                redirect('login');
            } else {
                $this->session->set_flashdata('fail', 'Gagal mendaftar, silahkan coba lagi');
                redirect('daftar');
            }
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }
}
