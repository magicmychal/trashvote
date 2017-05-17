<?php
// Municipality selection 
require_once('db_con.php');

$sql_regions = "SELECT * FROM `municipalities`";

$results_regions = mysqli_query($con, $sql_regions);

//let's do the output only for municipalities
while($row = mysqli_fetch_assoc($results_regions)){
		echo "<li class='animated lightSpeedIn'><a href='?list=".$row["ID"]."#elections'>".$row["Region"]."</a></li>";
	}
   
?>
