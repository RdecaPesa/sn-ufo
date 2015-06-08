<?php
require_once('header.php');
require_once ('skripte/ez_sql_core.php');
require_once ('skripte/ez_sql_mysql.php');

//vzpostavitev komunikacije z bazo
$db = new ezSQL_mysql ('root', '', 'ufo', 'localhost');
$db->query ("SET NAMES UTF8");

	$napaka = array();
	//dobi podatke iz forme
	if(isset($_POST['submit'])) {
		if($_POST['datum'] == "") {
			array_push ($napaka,"prosim vnesite datum");
		} else {
			$datum = $_POST ['datum'];
		}

		if($_POST['kdaj'] == "") {
			array_push ($napaka, "prosimo dodajte kdaj");
		} else {
			$kdaj = $_POST['kdaj'];
		}

		if($_POST['lokacija'] == "") {
			array_push ($napaka, "prosimo dodajte lokacijo");
		} else {
			$lokacija = $_POST['lokacija'];
		}


		if($_POST['izgled'] == "") {
			array_push ($napaka, "prosimo dodajte izgled");
		} else {
			$izgled = $_POST['izgled'];
		}


		if($_POST['dogajanje'] == "") {
			array_push ($napaka, "prosimo dodajte dogajanje");
		} else {
			$dogajanje = $_POST['dogajanje'];
		}

	
		if($_POST['ugrabitev'] == "") {
			array_push ($napaka, "prosimo dodajte ugrabitev");
		} else {
			$ugrabitev = $_POST['ugrabitev'];
		}


		if($_POST['kontakt'] == "") {
			array_push ($napaka, "prosimo dodajte kontakt");
		} else {
			$kontakt = $_POST['kontakt'];
		}


		//vpis v bazo
		if(!$napaka) {
			$db->query("INSERT INTO videnja (datum, kdaj, lokacija, izgled, dogajanje, ugrabitev, kontakt) 
				VALUES ('$datum', '$kdaj', '$lokacija', '$izgled', '$dogajanje', '$ugrabitev', '$kontakt')");
			
			echo "<p class='success'>Uspešen vnos</p>";
			//echo "<a href='index.php'>Domov</a>";
			die;

		}

	}
?>

<?php
	if($napaka) {
		foreach ($napaka as $value) {
			echo '<div style="color: red; padding: 5px;">' .$value. '</div>';
		}
		
	}
?>
  
<form action="add.php" method="POST">
	<p class='label'>Datum:<p>
		<p class='text'><input type="text" name="datum"></p><br>

	<p class='label'>Kdaj:<p>
		<p class='text'><input type="text" name="kdaj"></p><br>	

	<p class='label'>Lokacija:<p>
		<textarea class='text' name="lokacija" cols="30" rows="10"></textarea><br>

	<p class='label'>Izgled:<p>
	<textarea class='text' name="izgled" cols="30" rows="10"></textarea><br>

	<p class='label'>Dogajanje:<p>
		<textarea class='text' name="dogajanje" cols="30" rows="10"></textarea><br>

	<p class='label'>Ugrabitev:<p>
			<select name="ugrabitev">
				<option value="">Izberi...</option>
				<option value="0">NE</option>
				<option value="1">DA</option>
			</select>

	<p class='label'>Kontakt:<p>
		<p class='text'><input type="text" name="kontakt"></p><br>
	
	<input type="submit" value="Dodaj videnje" name='submit' class="buttom">
</form>
		
<?php require_once('footer.php'); ?>