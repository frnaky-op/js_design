<?php
$jsondata = file_get_contents("data.json");
$json = json_decode($jsondata , true);
$output ="<table class='table'><tr><th>Titre</th><th>Année</th><th>Director</th></tr>";
$int=0;

if(isset($_GET['page'])) {
	 if($_GET['page']!='prev' and  $_GET['page']!='next') {
			$k= $_GET['page'];
	 }
}
$k=$int*5;
foreach($json['movies'] as $m){
	if($k<$int+5){
		$output .= "<tr><td>".$m['title']."</td>";
		$output .= "<td>Year :".$m['year']."</td>";
		$output .= "<td>Director :".$m['director']."</td></tr>";
		$k++;
	}
}
$output .= "</table>";
function pagination($x){
	$pag='<table style="width:490px;height:70px">';
    $pag .= '<tr>';
    $pag .=  	'<td><a href="pagination.php?page=prev" class="button"><</a></td>';
    $pag .=  	'<td><a href="pagination.php?page='.($x+1).'" class="button cercle">1</a></td>';
    $pag .= 	'<td><a href="pagination.php?page='.($x+2).'" class="button cercle">2</a></td>';
    $pag .=  	'<td><a href="pagination.php?page='.($x+3).'" class="button cercle">3</a></td>';
    $pag .=  	'<td><a href="pagination.php?page='.($x+4).'" class="button cercle">4</a></td>';
    $pag .=  	'<td><a href="pagination.php?page='.($x+5).'" class="button cercle">5</a></td>';
    $pag .=  	'<td><a href="pagination.php?page=next" class="button">></a></td>';

    $pag .=  '</tr>';
'    $pag .=</table>';
return $pag;
}
?>
<html>
<head>
	<style>
	    .table {
 				width: 540px;
 				border: solid 1px;
				margin-bottom: 20px;
	    }
	    .table td , .table th {
	    	width: 33%;
	    	border: solid 1px;

	    }
		.button {
  			font: bold 20px Arial;
  			text-decoration: none;
  			color: #FFFFFF;
  			width:100%;
  			background-color: #aab2c3;
  			height: 100%;
  			padding: 25px 30px 25px 30px;
  			border: 1px solid #CCCCCC;
		}
		.button:hover{
			background-color: #556688;
		}
 		td {
 			width:70px;
 			height: 70px;
 		}
 		.cercle{
 			background: #0071d6;
 			border-radius: 100%;
 		}
 		.cercle:hover{
				background: #214462;
 		}
	</style>
</head>


<body>

<?php echo $output; ?>
<?php echo  pagination($int); ?>


</body>
</html>