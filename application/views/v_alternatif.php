<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Alternatif</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>dashboard">Dashboard</a></li>
              <li class="breadcrumb-item active">Alternatif</li>
            </ol>
            
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
      <button type="button" class="btn btn-flat btn-info float-sm-right" data-toggle="modal" data-target="#modal-lg">
            <i class="fa fa-plus" aria-hidden="true"></i> Tambah Data
      </button><br/><br/>
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
       
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
        
          <!-- Left col -->
          <section class="col-lg-12 connectedSortable">
          
          <div class="card">
              <div class="card-header">
                <h3 class="card-title">Data Alternatif</h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>ALTERNATIF</th>
                    <th style="text-align: center;">C1</th>
                    <th style="text-align: center;">C2</th>
                    <th style="text-align: center;">C3</th>
                    <th style="text-align: center;">C4</th>
                    <th style="text-align: center;">AKSI</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php $no=1; foreach($alternatif as $data){ ?>
                  <tr>
                      <td align="center"><?php echo $no++; ?></td>
                      <td><?php echo $data->nama_pegawai; ?></td>
                      <td><?php echo $data->C1; ?></td>
                      <td><?php echo $data->C2; ?></td>
                      <td><?php echo $data->C3; ?></td>
                      <td><?php echo $data->C4; ?></td>
                      <td align="center">
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#editalternatif<?php echo $data->id_nilai; ?>" class="btn btn-flat btn-primary btn-xs">Edit</a>
                          <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusalternatif<?php echo $data->id_nilai; ?>" class="btn btn-flat btn-danger btn-xs">Hapus</a>
                      </td>
                  </tr>

                        <div class="modal fade" id="hapusalternatif<?php echo $data->id_nilai; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                          <form action="<?php echo base_url(); ?>alternatif/delete" method="post">
                            <div class="modal-header" style="background-color: #dc3545; color: white;">
                              <h4 class="modal-title">Hapus Alternatif</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                            <input type="hidden" name="id" value="<?php echo $data->id_nilai; ?>"/>
                              Apakah anda ingin menghapus data alternatif berikut ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-flat btn-danger">Hapus Data Alternatif</button>
                            </div>
                          </div>
                          <!-- /.modal-content -->
                          </form>
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->

        <div class="modal fade" id="editalternatif<?php echo $data->id_nilai; ?>">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>alternatif/edit" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Ubah Data Alternatif</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <input type="hidden" name="id" value="<?php echo $data->id_nilai; ?>"/>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Pegawai (Alternatif)</label>
                    <select class="form-control" name="pegawai">
                        <option value="">-Pilih Pegawai-</option>
                        <option value="<?php echo $data->idpegawai; ?>" selected><?php echo $data->nama_pegawai; ?></option>
                        <?php foreach($pegawai as $a){ ?>
                        <option value="<?php echo $a->idpegawai; ?>"><?php echo $a->nama_pegawai; ?></option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C1 - KEHADIRAN (Hari)</label>
                    <select class="form-control" name="c1">
                        <option value="">-Pilih Sub Kriteria-</option>
                        <option value="<?php echo $data->id_c1; ?>" selected><?php echo $data->C1; ?></option>
                        <?php foreach($c1 as $b){ ?>
                        <option value="<?php echo $b->id_kriteria; ?>"><?php echo $b->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C2 - KINERJA INDIVIDU</label>
                    <select class="form-control" name="c2">
                        <option value="">-Pilih Sub Kriteria-</option>
                        <option value="<?php echo $data->id_c2; ?>" selected><?php echo $data->C2; ?></option>
                        <?php foreach($c2 as $c){ ?>
                          <option value="<?php echo $c->id_kriteria; ?>"><?php echo $c->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C3 - MASA KERJA</label>
                    <select class="form-control" name="c3">
                        <option value="">-Pilih Sub Kriteria-</option>
                        <option value="<?php echo $data->id_c3; ?>" selected><?php echo $data->C3; ?></option>
                        <?php foreach($c3 as $d){ ?>
                          <option value="<?php echo $d->id_kriteria; ?>"><?php echo $d->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C4 - PENDIDIKAN</label>
                    <select class="form-control" name="c4">
                        <option value="">-Pilih Sub Kriteria-</option>
                        <option value="<?php echo $data->id_c4; ?>" selected><?php echo $data->C4; ?></option>
                        <?php foreach($c4 as $e){ ?>
                          <option value="<?php echo $e->id_kriteria; ?>"><?php echo $e->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

                  <?php } ?>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>

          </section>
          <!-- /.Left col -->
          
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>


  <div class="modal fade" id="modal-lg">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <form action="<?php echo base_url(); ?>alternatif/create" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Alternatif</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Pegawai (Alternatif)</label>
                    <select class="form-control select2" name="pegawai">
                        <option value="" selected="selected">-Pilih Pegawai-</option>
                        <?php foreach($pegawai as $a){ ?>
                        <option value="<?php echo $a->idpegawai; ?>"><?php echo $a->nama_pegawai; ?>&nbsp;&nbsp;(<i><?php echo $a->nip; ?></i>)</option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C1 -KEHADIRAN (Hari)</label>
                    <select class="form-control" name="c1">
                        <option value="" selected="selected">-Pilih Sub Kriteria-</option>
                        <?php foreach($c1 as $data){ ?>
                        <option value="<?php echo $data->id_kriteria; ?>"><?php echo $data->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C2 - KINERJA INDIVIDU</label>
                    <select class="form-control" name="c2">
                        <option value="" selected="selected">-Pilih Sub Kriteria-</option>
                        <?php foreach($c2 as $data){ ?>
                          <option value="<?php echo $data->id_kriteria; ?>"><?php echo $data->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C3 - MASA KERJA</label>
                    <select class="form-control" name="c3">
                        <option value="" selected="selected">-Pilih Sub Kriteria-</option>
                        <?php foreach($c3 as $data){ ?>
                          <option value="<?php echo $data->id_kriteria; ?>"><?php echo $data->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Kriteria C4 - PENDIDIKAN</label>
                    <select class="form-control" name="c4">
                        <option value="" selected="selected">-Pilih Sub Kriteria-</option>
                        <?php foreach($c4 as $data){ ?>
                          <option value="<?php echo $data->id_kriteria; ?>"><?php echo $data->sub_kriteria; ?></option>
                        <?php } ?>
                  </select>
                  </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-flat btn-info">Simpan Data</button>
            </div>
          </div>
          <!-- /.modal-content -->
          </form>
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type='text/javascript'>

<?php if($this->session->flashdata('message2') == 'successfull') { ?>
   swal({
        title: "Berhasil",
        text: "Data kriteria berhasil diubah",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message2') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data kriteria gagal diubah !",
        icon: "error",
        button: "OK",
    });
<?php } ?>

<?php if($this->session->flashdata('message3') == 'error') { ?>
  swal({
        title: "Peringatan",
        text: "Bobot nilai kriteria tidak boleh melebihi angka 100 !",
        icon: "warning",
        button: "OK",
    });
<?php } ?>

</script>