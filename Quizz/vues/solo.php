<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<div id="background-solo">
	    <div class="row-box justify-between">
			<div id="time-bar" class="row-box justify-start">
				<div id="time" class="justify-center align-center">10</div>
				<div class="progress">
					<div id="progress-bar" class="progress-bar" role="progressbar" aria-valuenow="67"
					aria-valuemin="0" aria-valuemax="100" style="width:100%">
					</div>
				</div>
			</div>
			<div id="give-up" class="justify-center align-center" onclick="stopCount()">abandonner</div>
		</div>
			
		<div id="question-area" class="column-box justify-center align-center">
			<h1 id="question"></h1>
		</div>
		<div id="new-question"></div>
	</div>

	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		var c = 10;
		var b = 10;
		var pause;
		var count;
		var time = 0;
		var nbSec = 3;
		var nbQ = 1;
		var rep;
		var Suj = "<?php echo $Sujet; ?>";
		var ID = "<?php echo $_SESSION['ID']; ?>";

		var Question;
		var pastQuestions = [];

		preCountdown();

		function preCountdown()
		{
			if (nbSec >=1)
		    {
		    	document.getElementById("question").innerHTML = nbSec;
		    	nbSec = nbSec - 1;
		    	pause = setTimeout(function(){ preCountdown() }, 1000);
		    }
		    else
		    {
				$("#question-area").load("AJAX/maj_questionArea.php", { Sujet: Suj, Questions: pastQuestions }, 
				function(){ 
					Question = $("#question").attr('alt');
					pastQuestions.push(Question);
				});
				countdown();
		    }
		}

		function countdown()
		{
			if (b == 1.9e-14)
		    {
		    	stopCount();
		    }
		    else
		    {
		    	c = c - 0.1;
				b = c.toPrecision(2);

				if (b != 1.9e-14) 
					document.getElementById("time").innerHTML = b;
				else
					document.getElementById("time").innerHTML = "0";

				document.getElementById("progress-bar").style = "width: " + 10*b + "%";

			    count = setTimeout(function(){ countdown() }, 100);
		    }
		}

		function stopCount(rep)
		{
		    if (nbQ < 10)
			{
				// stocker le tps

				if(rep == "Bonne réponse") // requête
				{
					$('#new-question').load("AJAX/maj_ajoutQuestionInconnue.php", { IDQuestion: Question, IDCompte: ID }); // AJAX Ajout question
					time = parseFloat(time, 10) + parseFloat(b, 10);
				}

				// Réinitialisation

				clearTimeout(count);
				c=b=10;
				document.getElementById("time").innerHTML = 10;
				document.getElementById("progress-bar").style = "width: 100%";

				// AJAX nouvelle question

				$("#question-area").load("AJAX/maj_questionArea.php", { Sujet: Suj, Questions: pastQuestions }, function(){ Question = $("#question").attr("alt"); pastQuestions.push(Question); });

				// Rappel

				nbQ++;
				countdown();	
			}
			else
			{
				// stocker le tps

				if(rep == "Bonne réponse") // requête
				{
					$('#new-question').load("AJAX/maj_ajoutQuestionInconnue.php", { IDQuestion: Question, IDCompte: ID }); // AJAX Ajout question
					time = parseFloat(time, 10) + parseFloat(b, 10);
				}

				clearTimeout(pause);
				clearTimeout(count);

				// Page des résultats
			}
		}
	</script>
<?php $content = ob_get_clean(); ?>