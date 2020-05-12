<?php 
	session_start();
	$db = mysqli_connect('ssctem-mysqldbserver.mysql.database.azure.com', 'ssctema@ssctem-mysqldbserver', 'Student134129', 'comenzi');

	// initialize variables
    $numeosp = "";
	$fel1 = "";
    $fel2 = "";
    $nrmasa = "";
    $numeajosp = "";
	$id = 0;
	$update = false;

	if (isset($_POST['save'])) {
        $fel1 = $_POST['fel1'];
        $fel2 = $_POST['fel2'];
		$numeosp = $_POST['name'];
        $nrmasa = $_POST['nr'];
        $numeajosp = $_POST['nameaj'];
	
        
        mysqli_query($db, "INSERT INTO comanda (Fel_principal, Fel_secundar)
            VALUES ('$fel1', '$fel2');");
		mysqli_query($db, "INSERT INTO ospatari (nume)
            VALUES ('$numeosp');");
        mysqli_query($db, "INSERT INTO masa (Nr_masa)
            VALUES ('$nrmasa')");
        mysqli_query($db, "INSERT INTO ajutor_ospatar (Nume)
            VALUES ('$numeajosp');");
        
		$_SESSION['message'] = "Saved"; 
		header('location: table.php');
	}

?>