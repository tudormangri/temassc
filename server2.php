<?php 
	session_start();
	$db = mysqli_connect('ssctem-mysqldbserver.mysql.database.azure.com', 'ssctema@ssctem-mysqldbserver', 'Student134129', 'comenzi');


	// initialize variables
	$name = "";
	$fel1 = "";
    $fel2 = "";
    $masa = "";
	$id = 0;
	$update = false;

	if (isset($_POST['save'])) {
		$name = $_POST['name'];
		$fel1 = $_POST['fel1'];
        $fel2 = $_POST['fel2'];
        $masa = $_POST['masa'];

		mysqli_query($db, "INSERT INTO info (name, fel1, fel2, masa) VALUES ('$name', '$fel1', '$fel2', '$masa')"); 
		$_SESSION['message'] = "saved"; 
		header('location: index1.php');
        mysqli_query($db, "INSERT INTO ospatarie (Nume) SELECT (name) FROM info"); 
      
	}

if (isset($_POST['update'])) {
	$id = $_POST['id'];
	$name = $_POST['name'];
	$fel1 = $_POST['fel1'];
    $fel2 = $_POST['fel2'];
    $masa = $_POST['masa'];

	mysqli_query($db, "UPDATE info SET name='$name', fel1='$fel1', fel2='$fel2', masa='$masa' WHERE id=$id");
	$_SESSION['message'] = "Comanda updatata!"; 
	header('location: index1.php');
    mysqli_query($db, "INSERT INTO ospatarie (Nume) SELECT (name) FROM info"); 
    
}

$results = mysqli_query($db, "SELECT * FROM info");

if (isset($_GET['del'])) {
	$id = $_GET['del'];
	mysqli_query($db, "DELETE FROM info WHERE id=$id");
	$_SESSION['message'] = "Comanda Stearsa!"; 
	header('location: index1.php');
    
}

?>