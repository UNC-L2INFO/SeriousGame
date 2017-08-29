<?php
	
	$link = mysqli_connect('localhost', 'root', '', 'quizz_bdd');
	$exit = false;

	/* Vérification champs vides */

	if ( strlen($_POST['ndc']) == 0
		OR strlen($_POST['mdp']) == 0
		OR strlen($_POST['pseudo']) == 0
		OR strlen($_POST['prenom']) == 0
		OR strlen($_POST['nom']) == 0
		OR strlen($_POST['email']) == 0
		OR strlen($_POST['age']) == 0 )
	{
		echo 'Veuillez remplir tous les champs.<br/>';
		$exit = true;
	}

	/* Vérification pseudo */

	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE PseudoCompte = "'.$_POST['pseudo'].'"
			 ';
	$resultlogin = mysqli_query( $link, $query );

	if( mysqli_num_rows( $resultlogin) > 0 )
	{
		echo 'Pseudo indisponible.<br/>';
		$exit = true;
	}

	/* Vérification NDC */

	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE NDCCompte = "'.$_POST['ndc'].'"
			 ';
	$resultlogin = mysqli_query( $link, $query );

	if( mysqli_num_rows( $resultlogin) > 0 )
	{
		echo 'Nom de compte indisponible.<br/>';
		$exit = true;
	}

	/* Vérification mot de passe */

	if ( strlen($_POST['mdp']) < 8 )
	{
		echo 'Mot de passe trop court.<br/>';
		$exit = true;
	}

	/* Vérification confirmation */

	if ( $_POST['mdp'] != $_POST['mdp-confirm'] )
	{
		echo 'Confirmation du mot de passe incorrecte.<br/>';
		$exit = true;
	}

	/* Vérification email */

	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE emailUtilisateur = "'.$_POST['email'].'"
			 ';
	$resultlogin = mysqli_query( $link, $query );

	if( mysqli_num_rows( $resultlogin) > 0 )
	{
		echo 'Email indisponible.<br/>';
		$exit = true;
	}

	/* Exit si erreur */

	if ($exit == true) 
	{
		mysqli_free_result( $resultlogin );
		header( "refresh:5;url=creer_C.php" );
		echo '<br/>(redirection automatique dans 5 sec.)';
		exit;
	}

	/* Création du compte */

	$query = '
				INSERT INTO infocompte (NDCCompte, MDPCompte, PseudoCompte, PrenomUtilisateur, NomUtilisateur, 
				            emailUtilisateur, AgeUtilisateur)
				VALUES ("'.$_POST['ndc'].'", "'.$_POST['mdp'].'", "'.$_POST['pseudo'].'", "'.$_POST['prenom'].'", 
				        "'.$_POST['nom'].'", "'.$_POST['email'].'", "'.$_POST['age'].'")
			 ';
	$resultlogin = mysqli_query( $link, $query );

?>

<!doctype html>
<html lang="fr">

	<head>
		<title></title>
		<meta name="Description" content=""/>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
		<link rel="Stylesheet" href="../CSS/polices.css" type="text/css">
		<link rel="Stylesheet" href="../CSS/layout.css" type="text/css">
		<!-- Remplir avec le bon css -->
		<link rel="Stylesheet" href="../CSS/succes_creer_C.css" type="text/css"> 
		<link rel="Stylesheet" href="../CSS/bootstrap.min.css" type="text/css">
	</head>

	<body class="accueil">

	<?php require 'layout.inc.php'; ?>

	<div class="container">
		<div class="jumbotron">
			<h1>Compte créé !</h1>      
			<p>Vous pouvez maintenant accéder à votre compte pour choisir un avatar.</p>
		</div>
	</div>

	</body>
</html>