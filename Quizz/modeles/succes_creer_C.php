<?php

function exist_idcompte_from_pseudo($pseudo)
{
	$link = open_database_connection();

	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE PseudoCompte = "'.$pseudo.'"
			 ';
	$result = mysqli_query($link, $query);

	close_database_connection($link);
	return $result;
}

function exist_idcompte_from_ndc($ndc)
{
	$link = open_database_connection();

	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE NDCCompte = "'.$ndc.'"
			 ';
	$result = mysqli_query($link, $query);

	close_database_connection($link);
	return $result;
}

function exist_idcompte_from_email($email)
{
	$link = open_database_connection();

	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE emailUtilisateur = "'.$email.'"
			 ';
	$result = mysqli_query($link, $query);

	close_database_connection($link);
	return $result;
}

function get_idcompte_from_pseudo($pseudo)
{
	$link = open_database_connection();

	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE PseudoCompte = "'.$pseudo.'"
			 ';
	$result = mysqli_query($link, $query);

	if ($result != false) 
	{
		$ID = mysqli_fetch_assoc( $result );
	}
	else
	{
		echo 'Désolé, une erreur est survenue.1';
		exit;
	}

	mysqli_free_result($result);
	close_database_connection($link);
	return $ID;
}

function get_distinct_theme()
{
	$link = open_database_connection();

	$query = '
				SELECT DISTINCT(NomThème), DescriptionSujet
				FROM thèmequestion 
				ORDER BY NomThème ASC
			 ';
	$result = mysqli_query( $link, $query );

	while ($data = mysqli_fetch_assoc($result))
    {
            $theme[] = $data;
    }

	mysqli_free_result($result);
	close_database_connection($link);
	return $theme;
}

function add_account($ndc, $mdp, $pseudo, $prenom, $nom, $email, $age)
{
	$link = open_database_connection();

	$query = '
				INSERT INTO infocompte (NDCCompte, MDPCompte, PseudoCompte, PrenomUtilisateur, NomUtilisateur, 
				            emailUtilisateur, AgeUtilisateur)
				VALUES ("'.$ndc.'", "'.$mdp.'", "'.$pseudo.'", "'.$prenom.'", 
				        "'.$nom.'", "'.$email.'", "'.$age.'")
			 ';
	mysqli_query($link, $query);

	close_database_connection($link);
}

?>

