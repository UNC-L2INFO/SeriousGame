<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<div class="main-box">
		<section class="color-paleyellow">
			<p>
				Bienvenue sur (nomdusite) !</br></br>
				Affrontez des joueurs du monde entier en répondant à d'innombrables questions !</br></br>
				Préparez votre défense, attaquez celle de vos ennemis ou encore achevez votre campagne de classe.</br></br>
				Des combats à plusieurs ? Regroupez vous en guilde et affrontez jusqu'à 15 joueurs sur un mega questionnaire !</br></br>
				Restez informés car des Events peuvent apparaître à tout moment..
			</p>
		</section>

		<div class="column-box small-content">
			<section class="color-lightblue">
				PatchNote 1.5 :</br></br>
				-Toujours plus de Bonus accessibles au niveau 50</br></br>
				-De nouveaux Boss à défaire en campagne</br></br>
				-Proposez nous vos sujets/questions !</br></br>
			</section>

			<section class="color-red">
				Event de Noël :</br></br>
				Débloquez des questions spéciales pour enrichir votre 
				bibliothèque d'anecdotes sur le Père Noël !
			</section>
		</div>
							
		<section class="small-content color-green">
			<h3>TOP 10 DES JOUEURS</h3>
			<ul>
				<li>Joueur 1</li>
				<li>Joueur 2</li>
				<li>Joueur 3</li>
				<li>Joueur 4</li>
				<li>Joueur 5</li>
				<li>Joueur 6</li>
				<li>Joueur 7</li>
				<li>Joueur 8</li>
				<li>Joueur 9</li>
				<li>Joueur 10</li>
			</ul>
		</section>
	</div>
<?php $content = ob_get_clean(); ?>