<?php include_once "encabezado.php" ?>
<?php
include_once "base_de_datos.php";
$sentencia = $base_de_datos->query("SELECT * FROM productos where id_categoria != 2;");
$productos = $sentencia->fetchAll(PDO::FETCH_OBJ);
if (!isset($_SESSION["corte"])) $_SESSION["corte"] = [];

?>
<body onload="cm_readCookie()">
	<div class="col-xs-12">
		<h1>Apoyo Corte </h1>
		<h3>$ <label id="totP">0</label></h3>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Descripción</th>
					<th>Precio de venta</th>
					<th>Sistema</th>
					<th>Fisico</th>
					<th>Diferencia</th>
					<th>Dif $</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				foreach($productos as $producto){ 
				$cantidad = array_search($producto->existencia, array_keys($productos));?>
				<tr>
					<td><?php echo $producto->id ?></td>
					<td><?php echo $producto->descripcion ?></td>
					<td><?php echo $producto->precioVenta ?><input type='hidden' value='<?php echo $producto->precioVenta; ?>' id="preVenta<?php echo $producto->id;?>"></td>
					<td><?php echo $producto->existencia ?></td>
					<td><input type="text" id="exiFisico<?php echo $producto->id;?>" onchange="calculo(<?php echo $producto->existencia;?>,<?php echo $producto->id;?>,<?php echo $producto->precioVenta;?>,false)"></td>
					<td id="cel<?php echo $producto->id;?>"><label id="difP<?php echo $producto->id;?>"></td>
					<td><label id="difC<?php echo $producto->id;?>"></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
	<script>
	const map1 = new Map();
	var mapExFis = new Map();
		function calculo(exiSis, id, preVenta, isLoad){
			let totArray = 0;
			var exiFis = document.getElementById("exiFisico"+id).value;
			var totPrDif = 0;
			var dif = exiFis - exiSis;
			var labelTemp = document.getElementById('cel'+id);
			labelTemp.innerHTML = dif;
			if(dif < 0) {
				labelTemp.style.backgroundColor  = 'red';
				totPrDif = preVenta * dif;
			} else if(dif == 0) {
				labelTemp.style.backgroundColor  = 'black';
			} else if(dif > 0) {
				labelTemp.style.backgroundColor  = 'green';
				totPrDif = preVenta * dif;
			}
			labelTemp.style.color = 'white';
			labelTemp.style.textAlign  = 'center';
			document.getElementById('difC'+id).innerHTML = totPrDif;	
			
			map1.set(id, totPrDif);
		
		for (const x of map1.entries()) {
			totArray += x[1];
		}
			document.getElementById("totP").innerHTML = totArray;
			
		if(!isLoad)
			this.addCookie(id, exiFis, exiSis);
		}
		
		function addCookie(id, exiFis, exiSis){
			this.mapExFis.set(id, (exiFis +"||"+ exiSis));
			var date = new Date();
            date.setTime(date.getTime() + (1 * 24 * 60 * 60 * 1000));
            var expires = "; expires=" + date.toGMTString();
			const myJson = {};
			myJson.mapExFis = mapToObj(this.mapExFis);
			const json = JSON.stringify(myJson);
			document.cookie = "arrayExSis=" + json + expires + "; path=/";
		}
		
		function cm_readCookie() {
            var nameEQ = "arrayExSis=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) == 0) {
					var map =  new Map(Object.entries(JSON.parse(c.substring(nameEQ.length, c.length))));
					for (const x of map.entries()) {
						var totArray = new Map(Object.entries(x[1]));
						for (const [key, value] of totArray) {
							document.getElementById('exiFisico'+key).value = value.split('||')[0];
							this.calculo(parseInt(value.split('||')[1]), key, document.getElementById('preVenta' + key).value, true); 
						}
						this.mapExFis = totArray;
					}
					
				}
					c.substring(nameEQ.length, c.length);
				}
        }
		function mapToObj(map){
			const obj = {}
			for (let [k,v] of map)
				obj[k] = v
		return obj
		}
            
        

	</script>
<?php include_once "pie.php" ?>