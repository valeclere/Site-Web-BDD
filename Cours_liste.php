<?php require("haut.php"); ?>

<section id="main">
	<h2>Liste des cours</h2>
	<table>
		<tr>
			<th>R&eacute;f&eacute;rence</th>
			<th>Nom</th>
			<th>Nb CM</th>
			<th>Nb TD</th>
			<th>Nb TP</th>
			<th>TC</th>
			<th>Annee</th>
		</tr>

<?php
try{
	$req = $db->query('SELECT * FROM Cours ORDER BY idCours;');
	while ($cours = $req->fetch()){
?>
		<tr>
			<td><?php echo $cours['idCours']; ?></td>
			<td><?php echo $cours['nomCours']; ?></td>
			<td><?php echo $cours['nbCM']; ?></td>
			<td><?php echo $cours['nbTD']; ?></td>
			<td><?php echo $cours['nbTP']; ?></td>
			<td><?php echo $cours['TC']; ?></td>
			<td><?php echo $cours['annee']; ?></td>
		</tr>
<?php
	}
	$req->closeCursor();
}catch (Exception $e){
	die('Erreur : ' . $e->getMessage());
}
?>
	</table>
</section>

<?php require("bas.php"); ?>