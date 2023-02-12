<!DOCTYPE html>

<html>
<head>
<title>Laczenie z baza</title>
</head>
<body>
<?php
$uchwyt = pg_connect("host='79.163.163.110' port=7654 user=s317186 password=ohf8eYae
dbname=bazy_danych");
if (!$uchwyt) { echo "<p><b>Wystapil blad podczas laczenia z baza!!!</b></p>"; exit(); }
$wynik = pg_query($uchwyt, " SELECT * FROM ".$_GET['r']." ");
if (!$wynik) { echo "<p><b>" . pg_last_error($uchwyt) . "</b></p>"; }
while ($wiersz = pg_fetch_row($wynik)) {
echo " $wiersz[0] $wiersz[2] $wiersz[3] $wiersz[4] $wiersz[5] $wiersz[6] $wiersz[7] ";
echo "<br />\n";
}
pg_close($uchwyt);
?>
</body>
</html>