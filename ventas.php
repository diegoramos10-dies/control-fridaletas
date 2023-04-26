<?php include_once "encabezado.php" ?>
<?php
include_once "base_de_datos.php";

$sentencia = $base_de_datos->query("
SELECT 
		ventas.total, 
		ventas.fecha, 
		ventas.id, 
		GROUP_CONCAT(	productos.codigo, '..',  
		productos.descripcion, '..', 
		productos_vendidos.cantidad, '..', 
		(productos_vendidos.cantidad * productos.precioVenta) SEPARATOR '__') AS productos,
        CURDATE()
	FROM ventas 
	INNER JOIN productos_vendidos ON productos_vendidos.id_venta = ventas.id 
	INNER JOIN productos ON productos.id = productos_vendidos.id_producto 
    where ventas.fecha BETWEEN '".$_GET['trip-start']."' AND '".$_GET['trip-end'] ."'
	GROUP BY ventas.id ORDER BY ventas.id");
	
$ventas = $sentencia->fetchAll(PDO::FETCH_OBJ);

$SodasVenta = $base_de_datos->query("SELECT sum(cantidad) as totSod FROM `productos_vendidos` pv JOIN productos pr on pr.id = pv.id_producto WHERE codigo like 'Soda%' or codigo like 'Cerveza%'");
$SumSodas = $SodasVenta->fetchAll(PDO::FETCH_OBJ);

$TotSod = 0;
foreach($SumSodas as $SumSoda){
	$TodSod = $SumSoda->totSod;
}

?>



	<div class="col-xs-12">
	<br/>
		<h1>Ventas</h1>
		<div>
			<a class="btn btn-success" href="./vender.php">Nueva <i class="fa fa-plus"></i></a>
		</div>
		<div style="margin-top:20px">
			<form  method="GET" action="ventas.php">
				<label for="start">Desde:</label>
				<input type="date" id="start" name="trip-start" onchange="this.form.submit()"
					value="<?php echo $_GET['trip-start']?>">
				<label for="end">Hasta:</label>
				<input type="date" id="end" name="trip-end" onchange="this.form.submit()"
					value="<?php echo date_create('now')->format('Y-m-d'); ?>">
			</form>
		</div>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Número</th>
					<th>Fecha</th>
					<th>Productos vendidos</th>
					<th>Total</th>
					<th>Ticket</th>
					<th>Eliminar</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$totalDia = 0; 
				foreach($ventas as $venta){ 
				$totalDia = $totalDia + $venta->total;
				?>
				<tr>
					<td><?php echo $venta->id ?></td>
					<td><?php echo $venta->fecha ?></td>
					<td>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Código</th>
									<th>Descripción</th>
									<th>Cantidad</th>
									<th>Total</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach(explode("__", $venta->productos) as $productosConcatenados){ 
								$producto = explode("..", $productosConcatenados)
								?>
								<tr>
									<td><?php echo $producto[0] ?></td>
									<td><?php echo $producto[1] ?></td>
									<td><?php echo $producto[2] ?></td>
									<td><?php echo $producto[3] ?></td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</td>
					<td><?php echo $venta->total ?></td>
					<td><a class="btn btn-info" href="<?php echo "imprimirTicket.php?id=" . $venta->id?>"><i class="fa fa-print"></i></a></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
		<div class='divTotal'>Venta del Día -> <b>$ <?php echo $totalDia; ?></b><br/>Sodas Vendidas -> <b><?php echo $TodSod; ?></b></div>
	</div>
<?php include_once "pie.php" ?>