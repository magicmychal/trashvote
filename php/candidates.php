<?php
// Municipality selection 
require_once('db_con.php');

/*$sql_candidates = 	"SELECT * FROM names
					WHERE Region=".$ID;

$results_candiddates = mysqli_query($con, $sql_candidates);

//let's do the output for candidates! :D */

if(empty($_GET)){
	
}
else{
$sql_candidates = 	"SELECT names.Name, names.Description, municipalities.Region, names.url
					From names
					INNER JOIN municipalities ON names.RegionNames=municipalities.ID
					WHERE names.RegionNames=".$_GET['list'];

$results_candiddates = mysqli_query($con, $sql_candidates); 

if (isset($_GET['list'])) {
 if (mysqli_num_rows($results_candiddates) > 0){
	while($row = mysqli_fetch_assoc($results_candiddates)){
			echo"			
				<div class='col-md-4'>
						<div class='team text-center'>
							<div class='cover' style='background:url(img/team/team-cover1.jpg); background-size:cover;'>
							</div>
							<img src='".$row["url"]."' alt='Team Image' class='avatar'>
							<div class='title'>
								<h4>".$row["Name"]."</h4>
								<h5 class='muted regular'>".$row["Region"]."</h5>
								<p>".$row["Description"]."</p>
							</div>
						</div>
					</div>
					";
		}
 }
	else{
		echo "<center><div class='alert alert-danger' role='alert'><h5>No candiates in this area.</h5></div></center>";
	}
}
}
?>
