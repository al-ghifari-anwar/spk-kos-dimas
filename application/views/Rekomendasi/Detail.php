<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Detail Kos - <?= $kos['nama_kos'] ?></h1>
    </div>
    <?php if ($this->session->userdata('level_user') == 'pengguna') : ?>
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 mt-3 mx-auto">
                <div class="card shadow">
                    <div class="card-body p-3">
                        <img src="<?= base_url('assets/foto-kos/') . $kos['foto_kos'] ?>" alt="" class="img-fluid mb-3">
                        <h5><?= $kos['nama_kos'] ?></h5>
                        <h6><?= $kos['alamat_kos'] ?></h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 mt-3 mx-auto">
                <div class="card shadow">
                    <div class="card-body p-5">
                        <table>
                            <?php foreach ($detKos as $data) : ?>
                                <?php if ($data['kode_kriteria'] != 'lokasi') : ?>
                                    <tr>
                                        <th>
                                            <?php if ($data['kode_kriteria'] != 'fasilitas_kos') : ?>
                                                <?= $data['nama_kriteria'] ?>
                                            <?php endif; ?>
                                            <?php if ($data['kode_kriteria'] == 'fasilitas_kos') : ?>
                                                <?= 'Rating Kos' ?>
                                            <?php endif; ?>
                                        </th>
                                        <td>:</td>
                                        <td>
                                            <?= $data['kode_kriteria'] == 'harga' ? 'Rp. ' : '' ?>
                                            <?php if ($data['kode_kriteria'] != 'fasilitas_kos') : ?>
                                                <?= $data['value'] ?>
                                            <?php endif; ?>
                                            <?php if ($data['kode_kriteria'] == 'fasilitas_kos') : ?>
                                                <?php for ($i = 0; $i < $data['value']; $i++) { ?>
                                                    <i class="fas fa-star text-warning"></i>
                                                <?php } ?>
                                            <?php endif; ?>
                                            <?= $data['kode_kriteria'] == 'bimbel' ? ' KM' : '' ?>
                                        </td>
                                    </tr>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    <?php endif; ?>

</div>
<!-- /.container-fluid -->