<?php 

require_once('header.php'); 
require_once ('skripte/ez_sql_core.php');
require_once ('skripte/ez_sql_mysql.php');

//vzpostavitev komunikacije z bazo
$db = new ezSQL_mysql ('root', '', 'ufo', 'localhost');
$db->query ("SET NAMES UTF8");

$enoVidenje = $db->get_results("SELECT * FROM videnja WHERE id = '" . $db->escape($_GET['id']). "'");

//var_dump($enoVidenje);

?>
       
<div class="content blog">
	<?php 
		echo "<div class='videnje'>";
			echo "<p class='datum'>" . $enoVidenje[0]->datum . "</p>";
			echo "<p class='kdaj'>" . $enoVidenje[0]->kdaj . "</p>";
			echo "<p class='lokacija'>" . $enoVidenje[0]->lokacija . "</p>";
			echo "<p class='izgled'>" . $enoVidenje[0]->izgled . "</p>";
			echo "<p class='dogajanje'>" . $enoVidenje[0]->dogajanje . "</p>";
			
			if ($enoVidenje[0]->ugrabitev == 0) {
				echo "<p class='ugrabitev'>ne</p>";
			} else {echo "<p class='ugrabitev'>da</p>";}			
			echo "<p class='kontakt'>" . $enoVidenje[0]->kontakt . "</p>";

			



			//echo "<p>".substr($enoVidenje->dogajanje, 0, 12)."...</p>";
			// TODO: tole je za link
			//echo '<a href="clanek.php?id='.$enoVidenje->id.'">'.$enoVidenje->datum.'</a>';

		echo "</div>";
	?>
</div>
		
<?php require_once('footer.php'); ?>