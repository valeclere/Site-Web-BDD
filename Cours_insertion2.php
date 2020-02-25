<?php require("haut.php"); ?>

<section id="main">
	<h2>Nouveau cours</h2>

<?php
try{
	$req = $db->prepare('INSERT INTO Cours(idCours,nomCours,nbCM,nbTD,nbTP,TC,annee) VALUES(:idCours,:nomCours,:nbCM,:nbTD,:nbTP,:TC,:annee);');
    $req->execute(array('idCours' => htmlspecialchars($_POST['REF_COURS']), 'nomCours' => htmlspecialchars($_POST['NOM_COURS']), 'nbCM' => htmlspecialchars($_POST['NB_CM']), 'nbTD' => htmlspecialchars($_POST['NB_TD']), 'nbTP' => htmlspecialchars($_POST['NB_TP']), 'TC' => htmlspecialchars($_POST['TC']), 'annee' => htmlspecialchars($_POST['Annee']) ));
	echo 'L\'insertion a bien &eacute;t&eacute; enregistr&eacute;e.<br /><br />';
}catch (Exception $e){
	die('Erreur : ' . $e->getMessage());
}
?>

</section>

<?php require("bas.php"); ?>