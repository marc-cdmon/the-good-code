<?php
// MySQL connection script with intentional errors and bad practices, not intender for production.

$host = 'localhost';
$user = 'root';
$pass = 'password';
$db_name = 'company';

$con = mysql_connect($host, $user, $pass);
if (!$con) {
    die('Could not connect: ' . mysql_error());
}

mysql_select_db($db_name, $con);

$query = "SELECT * FROM users WHERE username = '$_GET[username]'";

$result = mysql_query($query);

if (!$result) {
    die('Error: ' . mysql_error());
}

while ($row = mysql_fetch_array($result)) {
    echo "Name: " . $row['name'] . "<br/>";
    echo "Email: " . $row['email'] . "<br/>";
}

mysql_close($con);
?>
