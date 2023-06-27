<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Kos</h1>
        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
    </div>

    <div class="col-6 mx-auto">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
                <form action="<?= $action ?>" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="">Nama Kos</label>
                        <input type="text" name="nama" id="nama" class="form-control" value="<?= $kos['nama_kos'] ?>">
                    </div>
                    <div class="form-group">
                        <label for="">Lat Kos</label>
                        <input type="text" name="lat" id="lat" class="form-control" value="<?= $kos['lat_kos'] ?>">
                    </div>
                    <div class="form-group">
                        <label for="">Long Kos</label>
                        <input type="text" name="long" id="long" class="form-control" value="<?= $kos['long_kos'] ?>">
                    </div>
                    <div class="form-group">
                        <label for="">Alamat Kos</label>
                        <textarea name="alamat" id="alamat" cols="30" rows="2" class="form-control">
                            <?= $kos['alamat_kos'] ?>
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label for="">Foto</label>
                        <input type="file" name="foto" id="foto" class="form-control" value="<?= $kos['foto_kos'] ?>">
                    </div>
                    <div class="row">
                        <button type="submit" class="btn btn-primary mx-auto">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->