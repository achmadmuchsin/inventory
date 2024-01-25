  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fa fa-money-bill-alt"></i>
          <!-- <i class="fa fa-money" aria-hidden="true"></i> -->
        </div>
        <div class="sidebar-brand-text mx-3">SIMIKEU</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="index.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Transaksi
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="pendapatan.php">
          <i class="fas fa-fw fa-arrow-up"></i>
          <span>Kredit</span>
        </a>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="pengeluaran.php" >
          <i class="fas fa-fw fa-arrow-down"></i>
          <span>Debit</span>
        </a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Transaksi 2
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
    <?php if ($_SESSION['level'] == 'unit'): ?>
      <li class="nav-item">
        <a class="nav-link collapsed" href="kredit.php">
          <i class="fas fa-fw fa-arrow-up"></i>
          <span>Kredit New</span>
        </a>
      </li>
    <?php endif ?>
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Unit Cabang
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="cabang.php">
          <i class="fas fa-fw fa-users"></i>
          <span>Cabang</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="kota-cabang.php">
          <i class="fas fa-fw fa-city"></i>
          <span>Kota Cabang</span>
        </a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Sumber
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="sumber.php">
          <i class="fas fa-fw fa-users"></i>
          <span> Sumber</span>
        </a>
      </li>

      <!-- Nav Item - Pages Collapse Menu -->
      <!-- <li class="nav-item">
        <a class="nav-link collapsed" href="pengguna.php">
          <i class="fas fa-fw fa-users"></i>
          <span> Sumber Debit</span>
        </a>
      </li> -->

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Pengguna
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="pengguna.php">
          <i class="fas fa-fw fa-users"></i>
          <span>Akun Pengguna</span>
        </a>
      </li>
	  
	        <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Tagihan
      </div>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="hutang.php">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Hutang</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="laporan.php">
          <i class="fas fa-fw fa-table"></i>
          <span>Laporan</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
