<?php
	include 'config.php';

	$input =$_GET["suche"];
	//$abfrage = "SELECT * FROM mitarbeiter LEFT JOIN (raeume) on (mitarbeiter.raum_id = raeume.raum_id) WHERE mitarbeiter.nachname LIKE BINARY '%$input%' ORDER BY mitarbeiter.nachname;";
	$abfrage="SELECT * FROM `mitarbeiter` LEFT JOIN (raeume) on (mitarbeiter.raum_id = raeume.raum_id) WHERE mitarbeiter.nachname LIKE '%$input%' OR mitarbeiter.vorname LIKE '%$input%' ;";
	$ergebnis = mysqli_query($verbindung, $abfrage);
	$results = array();
	$i = 0;
	while($r = mysqli_fetch_assoc($ergebnis)) {
		$row = array();
		$keys = array_keys($r);
		foreach ($keys as $key) {
			if ($r[$key] != null) {
				$value = htmlspecialchars(utf8_encode($r[$key]));
	//			echo ($value."<br>");
				$row[$key] = $value;
			}
		}
		$results[$i++] = $row;
	}
	print json_encode($results);

?>