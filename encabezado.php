<?php
include_once "base_de_datos.php";

$SodasVenta = $base_de_datos->query("SELECT sum(cantidad) as totSod FROM `productos_vendidos` pv JOIN productos pr on pr.id = pv.id_producto WHERE codigo like 'Soda%' or codigo like 'Cerveza%'");
$SumSodas = $SodasVenta->fetchAll(PDO::FETCH_OBJ);

$TotSod = 0;
foreach($SumSodas as $SumSoda){
	$TodSod = $SumSoda->totSod;
}

?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Ventas</title>
	
	<link rel="stylesheet" href="./css/2.css">
	<link rel="stylesheet" href="./css/estilo.css">
</head>
<body>
	<br/>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">POS</a>
			</div>
			<div id="navbar" >
				<ul class="nav navbar-nav">
					<li><a href="./listar.php">Productos</a></li>
					<li><a href="./vender.php">Vender</a></li>
					<li>
						<a href="">Reportes</a>
						<ul>
							<li><a href="./ventas.php">Ventas por Día</a></li>
							<li><a href="./NumeroXProductoVendido.php">Top Venta por producto</a></li>
							<li><a href="./corte.php">Hacer Corte</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class='divTotal'>Venta del Día -> <b>$ <?php echo $totalDia; ?></b><br/>Sodas Vendidas -> <b><?php echo $TodSod; ?></b></div>
	<div class="container">
		<div class="row">