<?php
if (isset($_POST['search'])) :
  require_once 'db.php';
  $search = $_POST['search'];

  $query = mysqli_query($conn, "SELECT * FROM destinasi WHERE nama LIKE '%{$search}%' ORDER BY nama");
  while ($row = mysqli_fetch_object($query)) :
?>
    <!-- Card -->
    <div class='item col-4'>
      <div class='card card-popular'>
        <img src='<?= $row->image; ?>' class='card-img-top' />
        <div class='price-tag'><?= 'Rp ' . number_format($row->harga); ?></div>
        <div class='d-flex action-group'>
          <a href='form.html?action=update&id=<?= $row->id; ?>' title='Ubah'>
            <div class='tag-btn edit me-2'>
              <i class='fas fa-edit'></i>
            </div>
          </a>
          <a href='data.php?action=delete&id=<?= $row->id; ?>' title='Hapus'>
            <div class='tag-btn del'>
              <i class='fas fa-trash'></i>
            </div>
          </a>
        </div>
        <div class='card-popular-body'>
          <h5><?= $row->nama; ?></h5>
          <h6 class='card-text'><?= $row->lokasi; ?></h6>
        </div>
      </div>
    </div>
<?php
  endwhile;
endif;
?>