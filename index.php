<?php 

require_once('header.php'); 
require_once ('skripte/ez_sql_core.php');
require_once ('skripte/ez_sql_mysql.php');

//vzpostavitev komunikacije z bazo
$db = new ezSQL_mysql ('root', '', 'ufo', 'localhost');
$db->query ("SET NAMES UTF8");

$videnja = $db->get_results("SELECT * FROM videnja ORDER BY datum DESC");

//var_dump($videnja);

?>
       
<div class="content blog">
	<?php foreach ($videnja as $enoVidenje) {
		echo "<div class='videnje box'>";
			echo "<p class='datum'>" . $enoVidenje->datum . "</p>";
			echo "<p class='kdaj'>" . $enoVidenje->kdaj . "</p>";
			echo "<p class='lokacija'>" . $enoVidenje->lokacija . "</p>";
			//echo "<p class='izgled'>" . $enoVidenje->izgled . "</p>";
			//echo "<p class='dogajanje'>" . $enoVidenje->dogajanje . "</p>";
			//echo "<p class='ugrabitev'>" . 
			//	$enoVidenje->ugrabitev ? 'DA' : 'NE' . "</p>";
			//echo "<p class='kontakt'>" . $enoVidenje->kontakt . "</p>";

			//echo "<p>".substr($enoVidenje->dogajanje, 0, 12)."...</p>";
			// TODO: tole je za link
			echo '<a href="view.php?id='.$enoVidenje->id.'">več</a>';

		echo "</div>";
	} 
	?>
</div>
<div
 id="animated-example" class="animated bounceInLeft"><img src="css/vesolc.svg" alt="vesolc">
</div>
		
<?php require_once('footer.php'); ?>