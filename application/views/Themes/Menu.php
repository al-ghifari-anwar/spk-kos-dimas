<div class="d-flex" id="wrapper">
    <!-- Sidebar-->
    <div class="border-end bg-white" id="sidebar-wrapper">
        <div class="sidebar-heading border-bottom bg-light">Sistem Penentuan Kos Terbaik</div>
        <?php if ($this->session->userdata('level_user') == 'admin') : ?>
            <div class="list-group list-group-flush">
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('') ?>"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('user') ?>"><i class="fas fa-user-alt"></i> User</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('kriteria') ?>"><i class="fas fa-list-alt"></i> Kriteria</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('bimbel') ?>"><i class="fas fa-school"></i> Bimbel</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('fasilitas') ?>"><i class="fas fa-toilet"></i> Fasilitas Umum</a>
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('kos') ?>"><i class="fas fa-house-user"></i> Kos</a>
            </div>
        <?php endif; ?>
        <?php if ($this->session->userdata('level_user') == 'pengguna') : ?>
            <div class="list-group list-group-flush">
                <a class="list-group-item list-group-item-action list-group-item-light p-3" href="<?= base_url('rekomendasi') ?>"><i class="fas fa-house-user"></i> Lihat Rekomendasi Kos</a>
            </div>
        <?php endif; ?>
    </div>
    <!-- Page content wrapper-->
    <div id="page-content-wrapper">
        <!-- Top navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
            <div class="container-fluid">
                <button class="btn text-white" id="sidebarToggle"><i class="navbar-toggler-icon"></i></button>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?= $this->session->userdata('nama_user') ?></a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="<?= base_url('change-password') ?>">Ubah Password</a>
                                <a class="dropdown-item" href="<?= base_url('logout') ?>">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>