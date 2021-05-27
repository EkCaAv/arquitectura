<h1 class="page-header">Clientes</h1>

<div class="well well-sm text-right">
    <a class="btn btn-primary" href="?c=Cliente&a=Crud">Nuevo Cliente</a>
</div>
<div class="container mt-3">
  <?php
	$a=51;
	$b=16;
	$ojo="cafe";
	$puntos=0;
	
	if($a>18 and $ojo="cafe"){
		echo "mayor de edad";
		$puntos=$puntos+10;
	}
	else {
		echo "menor de edad";
	}
	
	?>
  <h2>Área de Búsqueda</h2>
  <p>Usted puede generar búsquedas por: Nombre, Apellido, Documento, Email o Genero</p>  
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>
<table class="table table-striped">
    <thead>
        <tr>
			<th style="width:180px;">Documento</th>
            <th style="width:180px;">Nombre</th>
            <th style="width:180px;">Apellido</th>
            <th style="width:180px;">Correo</th>
            <th style="width:120px;">Sexo</th>
            <th style="width:120px;">Nacimiento</th>
            <th style="width:60px;"></th>
            <th style="width:60px;"></th>
        </tr>
    </thead>
	
    <tbody id="myTable">
    <?php foreach($this->model->Listar() as $r): ?>
        <tr>
			<td><?php echo $r->Documento; ?></td>
            <td><?php echo $r->Nombre; ?></td>
			<td><?php echo $r->Apellido; ?></td>
			<td><?php echo $r->Correo; ?></td>
         	<td><?php echo $r->Sexo == 1 ? 'Hombre' : 'Mujer'; ?></td>
            <td><?php echo $r->FechaNacimiento; ?></td>
            <td>
                <a href="?c=Cliente&a=Crud&id=<?php echo $r->id; ?>">Editar</a>
            </td>
            <td>
                <a onclick="javascript:return confirm('¿Seguro de eliminar este registro?');" href="?c=Cliente&a=Eliminar&id=<?php echo $r->id; ?>">Eliminar</a>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
	
</table> 
</div>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>