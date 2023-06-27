<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <?php if ($this->session->userdata('level_user') == 'mahasiswa') : ?>
            <a href="<?= base_url('datamahasiswa') ?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-file fa-sm text-white-50"></i> Lengkapi Data Sekarang</a>
        <?php endif; ?>
    </div>

    <?php if ($this->session->userdata('level_user') == 'admin') : ?>
        <!-- Content Row -->
        <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                    Jumlah Kos</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jmlKos['jml'] ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-house-user fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                    Jumlah Pengguna</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $jmlUsr['jml'] ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-users fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>
    <?php if ($this->session->userdata('level_user') == 'pengguna') : ?>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 mt-3">
                <div class="card shadow">
                    <div class="card-body p-5">
                        <h5>Hai, <?= $this->session->userdata('nama_user') ?>. Sedang mencari rekomendasi kos ya?? Langsung cek menu di samping ya!</h5>
                    </div>
                </div>
            </div>

        </div>
    <?php endif; ?>

</div>
<!-- /.container-fluid -->