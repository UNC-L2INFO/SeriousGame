<?php 

function get_random_question_from_theme($sujet)
{
	/* 90% de chance pour une question de nv1
	9% pour une nv2
	1% pour une nv3 */

	$prob = rand(1,100);

	if ($prob > 9 AND $prob < 100)
	{
		$prob = 90;
	}
	else if ($prob > 1 AND $prob < 9)
	{
		$prob = 9;
	}

	$nvProb = array(1 => 90,
				    2 => 9,
				    3 => 1);

	$nvQ = array_search($prob, $nvProb);

	$link = open_database_connection();

	$query = '
				SELECT IDQuestion, Question, bonnerep, mauvaiserep1, mauvaiserep2, mauvaiserep3
				FROM question
				WHERE NvQuestion = '.$nvQ.'
					  AND NomSujet = "'.$sujet.'"
				ORDER BY RAND()
				LIMIT 1';
	$result = mysqli_query($link, $query);
	$selectedQ = mysqli_fetch_assoc($result);

	mysqli_free_result($result);
	close_database_connection($link);
	return $selectedQ;
}

function add_question($idcompte, $idquestion)
{
	$link = open_database_connection();

	$query = '
				INSERT INTO banquedequestion (IDCompte, IDQuestion)
				VALUES ("'.$idcompte.'", "'.$idquestion.'")
			 ';
	mysqli_query($link, $query);

	close_database_connection($link);
}

function get_correct_answer_from_idquestion($idquestion)
{
	$link = open_database_connection();

	$query = '
				SELECT bonnerep
				FROM question
				WHERE IDQuestion = '.$idquestion.'
			 ';
	$result = mysqli_query($link, $query);
	$bonneR = mysqli_fetch_assoc($result);

	mysqli_free_result($result);
	close_database_connection($link);
	return $bonneR;
}

?>