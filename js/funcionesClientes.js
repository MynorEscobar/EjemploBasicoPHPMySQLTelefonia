function agregar_datos() {
    var datos = $("#frminsertarclientes").serialize();
    //alert(datos);
    $.ajax({
        method: "POST",
        url: "dao/insertar.php",
        data: datos,
        success: function(e) {
            if (e == 1) {
                alert("registro guardado con exito");
            } else {
                alert("Error al almacenar registro");
            }
        }
    });

    return false;
}

function modificar_datos() {
    //obteniendo todos los datos del formulario
    var datos = $("#frminsertarclientes").serialize();
    alert(datos);
    $.ajax({
        method: "POST",
        url: "dao/actualizar.php",
        data: datos,
        success: function(e) {
            if (e == 1) {
                alert("registro modificado");
            } else {
                alert("no se puede modificar, verifique datos");
            }
        }
    });
    return false;
}