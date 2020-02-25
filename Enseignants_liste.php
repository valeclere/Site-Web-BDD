<?php require("haut.php"); ?>

<section id="main">
	<h2>Liste des cours</h2>
	<table>
		<tr>
			<th>R&eacute;f&eacute;rence</th>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Statut</th>
			<th>Organisme</th>
			<th>Type</th>
		</tr>

<?php
try{
	$req = $db->query('SELECT * FROM Enseignants ORDER BY idEnseignant;');
	while ($cours = $req->fetch()){
?>
		<tr>
			<td><?php echo $cours['idEnseignant']; ?></td>
			<td><?php echo $cours['nom']; ?></td>
			<td><?php echo $cours['prenom']; ?></td>
			<td><?php echo $cours['statut']; ?></td>
			<td><?php echo $cours['organisme']; ?></td>
			<td><?php echo $cours['typeEns']; ?></td>
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