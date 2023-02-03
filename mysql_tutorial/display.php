<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "myweb";

$conn = new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{
    die("Connection failed:".$conn->connect_error);
}

$sql = "Select id,firstname,lastname,email,date from users ORDER BY firstname ASC";
$result = $conn->query($sql);
if($result->num_rows>0)
{
    while($row=$result->fetch_assoc())
    {
        
        echo "ID:\t" . $row["id"] . " Name:\t " . $row["firstname"] . "\t" . $row["lastname"] . "\t -\t " . $row["email"], "<br>";
    }
}

else
{
    echo "0 results";
}
?>