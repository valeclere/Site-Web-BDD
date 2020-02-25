<?php require("haut.php"); ?>

<section id="main">
	<h2>Nouveau cours</h2>
		
	<form method="post" action="Cours_insertion2.php">
		R&eacute;f&eacute;rence :<br />
		<input type="text" name="REF_COURS" value="" /><br />
	
		Nom :<br />
		<input type="text" name="NOM_COURS" value="" /><br />
    
		nb de CM :<br />
		<input type="text" name="NB_CM" value="" /><br />
    
        nb de TD :<br />
		<input type="text" name="NB_TD" value="" /><br />

        nb de TP :<br />
		<input type="text" name="NB_TP" value="" /><br />

        cours de TC oui/non :<br />
		<input type="text" name="TC" value="" /><br />

        Annee :<br />
		<input type="text" name="Annee" value="" /><br />

		<br />
		<input type="submit" name="envoyer" value="ok" />
	</form>
</section>

<?php require("bas.php"); ?>