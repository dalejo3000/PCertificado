
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Home</a>
      </li>
      <!--
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    -->
    </ul>

    <!-- SEARCH FORM -->
    <!--
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>
-->
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->

      <!-- Notifications Dropdown Menu -->

      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="./index.php" class="brand-link">
      <img src="./admin/dashboard/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Inicio</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <!--
        <div class="image">
          <img src="../images/users/<?php echo $arregloUsuario['imagen']; ?>" class="img-circle elevation-2"
            alt="<?php echo $arregloUsuario['nombre']; ?>">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?php echo $arregloUsuario['nombre']; ?></a>
        </div>
      -->
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="./index.php" class="nav-link">
              <i class="nav-icon fa fa-home"></i>
              <p>
                Inicio
              </p>

            </a>
          </li>

          <?php
            /*if($arregloUsuario['nivel']== 'admin'){*/
          ?>
          <!-- Pestaña para el administrador, lista de clientes registrados
              <li class="nav-item">
                <a href="./productos.php" class="nav-link">
                  <i class="nav-icon far fa-image"></i>
                  <p>
                    Lista de Clientes
                  </p>
                </a>
              </li>
          -->
            <!-- Lista administradores
              <li class="nav-item">
                <a href="./usuarios.php" class="nav-link">
                  <i class="nav-icon fa fa-users"></i>
                  <p>
                    Administrador
                  </p>
                </a>
              </li>
            -->

                <li class="nav-item">
                  <a href="./certificado.php" class="nav-link">
                    <i class="nav-icon fa fa-certificate"></i>
                    <p>
                      Generador certificados (PDF)
                    </p>
                  </a>
                </li>


          <?php/* } */?>

                <li class="nav-item">
                  <a href="./login.php" class="nav-link">
                    <i class="nav-icon fa fa-times-circle"></i>
                    <p>
                      Salir / Login
                    </p>
                  </a>
                </li>



        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
