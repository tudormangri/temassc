<?php  include('server3.php'); ?>

<?php 
	if (isset($_GET['edit'])) {
		$id = $_GET['edit'];
		$update = true;
		$record = mysqli_query($db, "SELECT * FROM comanda WHERE id=$id");

		if (count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$fel1 = $n['Fel_principal'];
			$fel2 = $n['Fel_secundar'];
		}
	}
?>




<!DOCTYPE html>
<html>
<head>
	<title>
        CRUD: CReate, Update, Delete PHP MySQL</title>
    <link rel="stylesheet" type="text/css" href="style2.css">
</head>
    
<body>
    
    <?php $results = mysqli_query($db, "SELECT * FROM comanda"); ?>
   

<table>
	<thead>
		<tr>
            <th>Fel 1</th>
			<th>Fel 2</th>
			<th colspan="2">Action</th>
		</tr>
	</thead>
	
	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['Fel_principal']; ?></td>
            <td><?php echo $row['Fel_secundar']; ?></td>

			<td>
				<a href="table.php?edit=<?php echo $row['id']; ?>" class="edit_btn" >Edit</a>
			</td>
			<td>
				<a href="server.php?del=<?php echo $row['id']; ?>" class="del_btn">Delete</a>
			</td>
		</tr>
	<?php } ?>
    
    
    
   
    
    
    
</table>
    
	<form method="post" action="server3.php" >
        

        
		<div class="input-group">
			<label>Nume Ospatar</label>
			<input type="text" name="name" value="">
		</div>
        <div class="input-group">
			<label>Fel Principal</label>
			<input type="text" name="Fel_principal" value="">
		</div>
        <div class="input-group">
			<label>Fel Secundar</label>
			<input type="text" name="Fel_secundar" value="">
		</div>
        <div class="input-group">
			<label>Numar Masa</label>
			<input type="text" name="nr" value="">
		</div>
        <div class="input-group">
			<label>Nume Ajutor Ospatar</label>
			<input type="text" name="nume" value="">
		</div>
        
		<div class="input-group">
		<?php if ($update == true): ?>
	<button class="btn" type="submit" name="update" style="background: #556B2F;" >update</button>
<?php else: ?>
	<button class="btn" type="submit" name="save" >Save</button>
<?php endif ?>
		</div>
	</form>
</body>
    <body>
<?php if (isset($_SESSION['message'])): ?>
	<div class="msg">
		<?php 
			echo $_SESSION['message']; 
			unset($_SESSION['message']);
		?>
	</div>
<?php endif ?>
</html>