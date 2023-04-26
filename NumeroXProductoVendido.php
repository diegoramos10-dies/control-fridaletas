<?php include_once "encabezado.php" ?>
<?php
include_once "base_de_datos.php";

$sentencia = $base_de_datos->query("
	SELECT count(pd.descripcion) cantidad, pd.descripcion, cat.descripcion descCat
	FROM productos_vendidos pv
	JOIN productos pd on pv.id_producto = pd.id
	LEFT JOIN categorias cat on cat.id_categoria = pd.id_categoria
	group by pd.descripcion, pd.descripcion, cat.descripcion
	order by cantidad desc
");
	
$numXproducto = $sentencia->fetchAll(PDO::FETCH_OBJ);

?>


	<script type="text/javascript" src="js/filterTable.js"></script>
	<link rel="stylesheet" type="text/css" href="css/styleTable.css">

	<div class="col-xs-12">
	<br/>
		<h1>Historico Productos Vendidos</h1>
		<div>
			<a class="btn btn-success" href="./vender.php">Nueva <i class="fa fa-plus"></i></a>
		</div>
		<br>
		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Buscar..">
		<br>
		<table class="table table-bordered" id="myTable">
			<thead>
				<tr>
					<th>Descipcion</th>
					<th>Categoria</th>
					<th>Productos vendidos</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$totalDia = 0; 
				foreach($numXproducto as $numXprod){ 
				$totalDia = $totalDia + $venta->total;
				?>
				<tr>
					<td><?php echo $numXprod->descripcion ?></td>
					<td><?php echo $numXprod->descCat ?></td>
					<td><?php echo $numXprod->cantidad ?></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
		
		<div class='divTotal'>Venta del Día -> <b>$ <?php echo $totalDia; ?></b></div>
	</div>
<?php include_once "pie.php" ?>