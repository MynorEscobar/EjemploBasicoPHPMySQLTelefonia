<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="jquery-3.5.1.min.js"></script>
    <script src="js/funcionesClientes.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Inicio</title>
</head>

<body>

    <h1 class="text-center">Ejemplo CRUD PHP</h1>
    <br> <br>
    <div class="container">

        <div class="row">
            <div class="col-3">
                <h3>Agregar Clientes</h3>

                <form id="frminsertarclientes" method="post">
                    <div class="form-group">
                        <div>
                            <label for="txt_id">Id</label>
                            <input type="text" class="form-control" name="txtid" id="txtid">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txt_apellido">Apellido</label>
                        <input type="text" class="form-control" name="txtapellido" id="txtapellido">
                    </div>
                    <div class="form-group">
                        <label for="txt_nombre">Nombre</label>
                        <input type="text" class="form-control" name="txtnombre" id="txtnombre">
                    </div>

                    <div class="form-group">
                        <label for="txt_correo">Correo Electrónico</label>
                        <input type="text" class="form-control" name="txtcorreo" id="txtcorreo">
                    </div>
                    <div class="form-group">
                        <label for="txt_direccion">Dirección</label>
                        <input type="text" class="form-control" name="txtdireccion" id="txtdireccion">
                    </div>

                    <button type="submit" class="btn btn-primary" name="btnguardar" id="btnguardar">Guardar</button>
                </form>
            </div>
            <div class="col">
                <h3 class="text-center">Clientes</h3>
                <table class="table">
                    <thead>
                        <tr>
                            
                            <th scope="col">Id</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Correo Electronico</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <?php
                    include "dao/conexion.php";
                    $sql = "select * from cliente";
                    $ejecutar = mysqli_query($conexion, $sql);
                    while ($fila = mysqli_fetch_array($ejecutar)){
                        
                    
                    ?>

                    <tbody>
                        <td><?php echo $fila['cliente_id']?></td>
                        <td><?php echo $fila['apellido']?></td>
                        <td><?php echo $fila['nombre']?></td>
                        <td><?php echo $fila['correo_electronico']?></td>
                        <td><?php echo $fila['direccion']?></td>
                        <td></td>
                    </tbody>
                    <?php
                    }    
                    ?>
                </table>

            </div>
        </div>

    </div>
    
    <script type="text/javascript">
        $(document).ready(function() {
            $("#btnguardar").on('click', function(e) {
                //alert("click");
                e.preventDefault();
                agregar_datos();
            });
        });
    </script>

</body>

</html>