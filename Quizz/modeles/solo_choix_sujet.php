<?php 

function get_locked_sujet_from_idcompte($idcompte)
{
	/* Sujets qui sont dans les themes de l'utilisateurs 
	mais que l'utilisateur n'a pas débloqué */

	$link = open_database_connection();

	$userThemes = '
						SELECT NomThème
						FROM possèdeavatar, associéavatar
						WHERE possèdeavatar.NomAvatar = associéavatar.NomAvatar
							  AND IDCompte = '.$idcompte;

	$userSubjects = '
						SELECT NomSujet
						FROM adébloquésujet
						WHERE IDCompte = '.$idcompte;

	$query = '
						SELECT NomSujet
						FROM sujet
						WHERE NomThème IN ('.$userThemes.')
							  AND NomSujet NOT IN ('.$userSubjects.')';

	$result = mysqli_query($link, $query);

	if ($result != false)
	{
		while ($data = mysqli_fetch_assoc($result))
	    {
	            $lockedSubjects[] = $data;
	    }
	}
	else
	{
		echo 'Désolé, une erreur est survenue1.';
		exit;
	}

	mysqli_free_result($result);
	close_database_connection($link);
	return $lockedSubjects;
}

function get_unlocked_sujet_from_idcompte($idcompte)
{
	$link = open_database_connection();

	$query = '
				SELECT NomSujet
				FROM adébloquésujet
				WHERE IDCompte = '.$idcompte.'
			 ';
	$result = mysqli_query($link, $query);

	if ($result != false) 
	{
		while ($data = mysqli_fetch_assoc($result))
	    {
	            $sujet[] = $data;
	    }
	}
	else
	{
		echo 'Désolé, une erreur est survenue.1';
		exit;
	}

	mysqli_free_result($result);
	close_database_connection($link);
	return $sujet;
}

?>