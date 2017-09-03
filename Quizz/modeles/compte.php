<?php

function get_avatar_from_theme($nomTheme)
{
	$link = open_database_connection();

	$query = '
				SELECT NomAvatar
				FROM associéavatar
				WHERE NomThème = "'.$nomTheme.'"
			  ';
	$result = mysqli_query($link, $query);

	if ($result != false)
	{
		$NomAvatar = mysqli_fetch_assoc( $result );
	}
	else
	{
		echo 'Désolé, une erreur est survenue.';
		exit;
	}

	mysqli_free_result($result);
	close_database_connection($link);
	return $NomAvatar;
}

function get_theme_from_idcompte($idcompte)
{
	$link = open_database_connection();

	$query = '
				SELECT associéavatar\.NomThème
				FROM possèdeavatar, associéavatar
				WHERE possèdeavatar\.NomAvatar = associéavatar\.NomAvatar
					  AND possèdeavatar\.IDCompte = "'.$idcompte.'"
			  ';
	$result = mysqli_query($link, $query);

	close_database_connection($link);
	return $result;
}

function add_avatar_to_account($idcompte, $nomAvatar)
{
	$link = open_database_connection();

	$query = '
				INSERT INTO possèdeavatar (IDCompte, NomAvatar)
				VALUES ("'.$idcompte.'", "'.$nomAvatar.'")
			  ';
	mysqli_query($link, $query);

	close_database_connection($link);
}

?>