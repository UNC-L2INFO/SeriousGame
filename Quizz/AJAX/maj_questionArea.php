<?php 
	require '../modeles/model.php';
	require '../modeles/solo.php';
?>

<?php
	$Question = get_random_question_from_theme($_POST['Sujet']);
	echo $_POST['Sujet'];

	if (!empty($Question['IDQuestion']) AND !empty($_POST['Questions'])) 
	{
		while (in_array($Question['IDQuestion'], $_POST['Questions'])) 
		{
			$Question = get_random_question_from_theme($_POST['Sujet']);
		}
	}

	$Rep = array($Question['mauvaiserep1'],
				 $Question['mauvaiserep2'],
				 $Question['mauvaiserep3'],
				 $Question['bonnerep']);

	shuffle($Rep);

	echo 	'<h1 id="question" alt="'.$Question['IDQuestion'].'">'.$Question['IDQuestion'].'</h1>
			<div class="column-box justify-center align-center">
				<div class="row-box">
					<button class="answer" onclick="rep = this.innerHTML; stopCount(rep);">'.$Rep[0].'</button>
					<button class="answer" onclick="rep = this.innerHTML; stopCount(rep);">'.$Rep[1].'</button>
				</div>
				<div class="row-box">
					<button class="answer" onclick="rep = this.innerHTML; stopCount(rep);">'.$Rep[2].'</button>
					<button class="answer" onclick="rep = this.innerHTML; stopCount(rep);">'.$Rep[3].'</button>
				</div>
			</div>';
?>