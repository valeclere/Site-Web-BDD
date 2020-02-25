<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="author" content="Delpech & Leclere" />
		<meta name="description" content="Site Gestion de cours" />
		<meta name="keywords" content="cours, enseignants, filiere, annee" />
 		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css" />
		<title>Gestion de Cours</title>
	</head>
	<body>
		<header>
			<h1>Bienvenue sur le site Gestion de cours
			<a href="index2.php">
				<img src="img/ISIMA.png" alt="Logo" width="60" />
			</a>
			</h1>
		</header>

		<nav class="navbar navbar-default">
			<ul class="nav navbar-nav">
				<li>
      				<a href="index.php">Accueil</a>
      			</li>
      			<!--<li>
					<a href="Produits_liste.php">Produits</a>
				</li>
				<li>
					<a href="Clients_liste.php">Clients</a>
				</li>-->
			</ul>
		</nav>

<?php
try{
	$db = new PDO('mysql:host=localhost;port=3306;dbname=cours;charset=utf8', 'root', 'root');
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(Exception $e){
	die('Erreur : ' . $e->getMessage());
}
?>