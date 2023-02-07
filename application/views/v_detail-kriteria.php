<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Detail Kriteria</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>dashboard">Dashboard</a></li>
              <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>kriteria">Kriteria</a></li>
              <li class="breadcrumb-item active">Detail Kriteria</li>
            </ol>
            
          </div><!-- /.col -->
          
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
      <button type="button" class="btn btn-flat btn-info float-sm-right" data-toggle="modal" data-target="#modal-lg">
            <i class="fa fa-plus" aria-hidden="true"></i> Tambah Data
      </button>
      <a href="<?php echo base_url(); ?>kriteria" class="btn btn-flat btn-default float-sm-right">
            <i class="fa fa-step-backward" aria-hidden="false"></i> Kembali
      </a><br/><br/>
    </div>
    <!-- /.content-header -->

    <div class="col-md-12">

            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">
                    Kriteria
                </h3>
              </div>
              <div class="card-body">
                    <ul>
                        <li>Kriteria : <?php echo $kriteria; ?></li>
                        <li>Keterangan : <?php echo $keterangan; ?></li>
                        <li>Bobot Nilai : <?php echo $n_kriteria; ?></li>
                    </ul>
              </div>
            </div>
    </div>

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
                <h3 class="card-title">Data Detail Kriteria</h3>
              </div>
              
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>NO</th>
                    <th>KRITERIA (<?php echo $kriteria; ?>)</th>
                    <th>KETERANGAN PENILAIAN</th>
                    <th>RANKING PENILAIAN</th>
                    <th>AKSI</th>
                  </tr>
                  </thead>
                  <tbody>
                  
                    <?php $no=1; foreach($bobot_n_kriteria as $a){ ?>
                        <tr>
                            <td align="center"><?php echo $no++; ?></td>
                            <td><?php echo $a->keterangan; ?></td>
                            <td><?php echo $a->bobot; ?></td>
                            <td align="center"><?php echo $a->nilai; ?></td>
                            <td><a href="javascript:void(0);" data-toggle="modal" data-target="#editbobot<?php echo $a->id_bobot; ?>" class="btn btn-flat btn-primary btn-xs">Edit</a>
                                <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusbobot<?php echo $a->id_bobot; ?>" class="btn btn-flat btn-danger btn-xs">Hapus</a>
                            </td>
                        </tr>

                        <div class="modal fade" id="editbobot<?php echo $a->id_bobot; ?>">
                          <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                            <form action="<?php echo base_url(); ?>kriteria/editbobot" method="post">
                              <div class="modal-header" style="background-color: #17a2b8; color: white;">
                                <h4 class="modal-title">Ubah Data Detail Kriteria</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Keterangan</label>
                                      <input type="hidden" name="id" value="<?php echo $a->id_bobot; ?>"/>
                                      <input type="hidden" name="id_kriteria" value="<?php echo $id_kriteria; ?>"/>
                                      <input type="text" class="form-control" id="exampleInputEmail1" name="keterangan" value="<?php echo $a->keterangan; ?>" placeholder="Ketikan keterangan">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Ranking Penilaian</label>
                                        <select class="form-control" name="ranking">
                                            <option value="<?php echo $a->id_nilai; ?>" selected="selected"><?php echo $a->bobot; ?> - <?php echo $a->nilai; ?></option>
                                            <?php foreach($bobot as $data){ ?>
                                            <option value="<?php echo $data->id_nilai; ?>"><?php echo $data->bobot; ?> - <?php echo $data->nilai; ?></option>
                                            <?php } ?>
                                    </select>
                                    </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-flat btn-info">Simpan Perubahan Data</button>
                              </div>
                            </div>
                            <!-- /.modal-content -->
                            </form>
                          </div>
                          <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->

                        <div class="modal fade" id="hapusbobot<?php echo $a->id_bobot; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                          <form action="<?php echo base_url(); ?>kriteria/deletebobot" method="post">
                            <div class="modal-header" style="background-color: #dc3545; color: white;">
                              <h4 class="modal-title">Hapus Detail Kriteria</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                            <input type="hidden" name="id_kriteria" value="<?php echo $id_kriteria; ?>"/>
                            <input type="hidden" name="id" value="<?php echo $a->id_bobot; ?>"/>
                              Apakah anda ingin menghapus data detail kriteria berikut ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-flat btn-default" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-flat btn-danger">Hapus Detail Kriteria</button>
                            </div>
                          </div>
                          <!-- /.modal-content -->
                          </form>
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->

                    <?php } ?>
                  
                  </tbody>
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
          <form action="<?php echo base_url(); ?>kriteria/create" method="post">
            <div class="modal-header" style="background-color: #17a2b8; color: white;">
              <h4 class="modal-title">Tambah Data Detail Kriteria</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Keterangan</label>
                    <input type="hidden" name="id_kriteria" value="<?php echo $id_kriteria; ?>"/>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="keterangan" placeholder="Ketikan keterangan">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Ranking Penilaian</label>
                    <select class="form-control" name="ranking">
                        <option value="" selected="selected">-Pilih Ranking Penilaian-</option>
                        <?php foreach($bobot as $data){ ?>
                        <option value="<?php echo $data->id_nilai; ?>"><?php echo $data->bobot; ?> - <?php echo $data->nilai; ?></option>
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

<?php if($this->session->flashdata('message') == 'successfull') { ?>
   swal({
        title: "Berhasil",
        text: "Data detail kriteria berhasil ditambahkan",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data detail kriteria gagal ditambahkan !",
        icon: "error",
        button: "OK",
    });
<?php } ?>

<?php if($this->session->flashdata('message2') == 'successfull') { ?>
   swal({
        title: "Berhasil",
        text: "Data detail kriteria berhasil diubah",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message2') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data detail kriteria gagal diubah !",
        icon: "error",
        button: "OK",
    });
<?php } ?>

<?php if($this->session->flashdata('message3') == 'successfull') { ?>
   swal({
        title: "Berhasil",
        text: "Data detail kriteria berhasil dihapus",
        icon: "success",
        button: "OK",
    });
<?php }else if($this->session->flashdata('message3') == 'error') { ?>
  swal({
        title: "Gagal",
        text: "Data detail kriteria gagal dihapus !",
        icon: "error",
        button: "OK",
    });
<?php } ?>

</script>