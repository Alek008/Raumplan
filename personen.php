<?php

$verbindung = mysqli_connect("localhost", "rauminfo", "virtuos", "rauminfo") or 
	die ("keine Verbindung möglich. Benutzername oder Passwort sind falsch");

$abfrage = "SELECT * FROM mitarbeiter LEFT JOIN (raeume) on (mitarbeiter.raum_id = raeume.raum_id) ORDER BY mitarbeiter.nachname ";
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