<?php

	require 'modeles/succes_creer_C.php';

	/* Initialisation */

	$exit = false;
	$vide = false;

	/* Vérification champs vides */

	/*if ( strlen($_POST['ndc']) == 0
		OR strlen($_POST['mdp']) == 0
		OR strlen($_POST['pseudo']) == 0
		OR strlen($_POST['prenom']) == 0
		OR strlen($_POST['nom']) == 0
		OR strlen($_POST['email']) == 0
		OR strlen($_POST['age']) == 0 )
	{
		echo 'Veuillez remplir tous les champs.<br/>';
		$exit = true;
		$vide = true;
	}

	/* Vérification pseudo */

	/*$result = exist_idcompte_from_pseudo($_POST['pseudo']);

	if ( !$vide && ( !$result || mysqli_num_rows( $result ) != 0 ) )
	{
		echo 'Pseudo indisponible.<br/>';
		$exit = true;
	}

	/* Vérification NDC */

	/*$result = exist_idcompte_from_ndc($_POST['ndc']);

	if ( !$vide && ( !$result || mysqli_num_rows( $result ) != 0 ) )
	{
		echo 'Nom de compte indisponible.<br/>';
		$exit = true;
	}

	/* Vérification mot de passe */

	/*if ( !$vide && strlen($_POST['mdp']) < 8)
	{
		echo 'Mot de passe trop court.<br/>';
		$exit = true;
	}

	/* Vérification confirmation */

	/*if ( $_POST['mdp'] != $_POST['mdp-confirm'] && !$vide)
	{
		echo 'Confirmation du mot de passe incorrecte.<br/>';
		$exit = true;
	}

	/* Vérification email */

	/*$result = exist_idcompte_from_email($_POST['email']);

	if ( !$vide && ( !$result || mysqli_num_rows( $result ) != 0 ) )
	{
		echo 'Email indisponible.<br/>';
		$exit = true;
	}

	/* Exit si erreur */

	/*if ($exit == true) 
	{
		mysqli_free_result( $result );
		header( "refresh:500;url=creer_C.php" );
		echo '<br/>(redirection automatique dans 5 sec.)';
		exit;
	}

	/* Création du compte */

	add_account($_POST['ndc'], $_POST['mdp'], $_POST['pseudo'], $_POST['prenom'], $_POST['nom'], $_POST['email'], $_POST['age']);

	/* Démarrage de la session du nouveau compte*/

	$ID = get_idcompte_from_pseudo($_POST['pseudo']);
	$_SESSION['ID'] = $ID['IDCompte'];

	include 'vues/succes_creer_C.php';
	include 'vues/layout.inc.php';
?>