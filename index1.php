<?php  include('server2.php'); ?>

<?php 
	if (isset($_GET['edit'])) {
		$id = $_GET['edit'];
		$update = true;
		$record = mysqli_query($db, "SELECT * FROM info WHERE id=$id");

		if (count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$name = $n['name'];
			$fel1 = $n['fel1'];
            $fel2 = $n['fel2'];
            $masa = $n['masa'];
            $id = $n['id'];
		}
	}
?>


<!DOCTYPE html>
<html>  
<head>
	<title>Administrator Comenzi Restaurant</title>
    <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
    <?php if (isset($_SESSION['message'])): ?>
	<div class="msg">
		<?php 
			echo $_SESSION['message']; 
			unset($_SESSION['message']);
		?>
	</div>
<?php endif ?>
    
    
    
    
    <?php $results = mysqli_query($db, "SELECT * FROM info"); ?>

<table>
	<thead>
		<tr>
			<th>Nume Ospatar</th>
			<th>Fel Principal</th>
            <th>Fel Secundar</th>
            <th>Masa</th>
			<th colspan="3">Action</th>
		</tr>
	</thead>
	
	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['fel1']; ?></td>
            <td><?php echo $row['fel2']; ?></td>
            <td><?php echo $row['masa']; ?></td>
			<td>
				<a href="index1.php?edit=<?php echo $row['id']; ?>" class="edit_btn" >Edit</a>
			</td>
			<td>
				<a href="server2.php?del=<?php echo $row['id']; ?>" class="del_btn">Delete</a>
			</td>
		</tr>
	<?php } ?>
</table>

    
    
    
    
    
    
    
    
	<form method="post" action="server2.php" >
        
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        
		<div class="input-group">
			<label>Name</label>
			<input type="text" name="name" value="<?php echo $name; ?>">
		</div>
		<div class="input-group">
			<label>Fel Principal</label>
			<input type="text" name="fel1" value="<?php echo $fel1; ?>">
		</div>
        <div class="input-group">
			<label>Fel Secundar</label>
			<input type="text" name="fel2" value="<?php echo $fel2; ?>">
		</div>
        <div class="input-group">
			<label>Masa</label>
			<input type="number" name="masa" value="<?php echo masa; ?>">
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
</html>