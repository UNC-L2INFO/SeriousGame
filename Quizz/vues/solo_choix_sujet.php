<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<div class="main-box">
		<section id="section-solo" class="column-box color-paleyellow align-center justify-around">
			<?php 

				$Sujets = get_unlocked_sujet_from_idcompte(74);

				foreach($Sujets as $n)
				{
			        echo '<form method="post" class="form-solo-choix-sujet large-content row-box justify-center" action="./?page=solo">
								<input type="hidden" name="Sujet" value="'.$n['NomSujet'].'" />
								<button type="submit" class="button-solo available">'.$n['NomSujet'].'</button>
						  </form>';
				}

				reset ($Sujets);
				$Sujets = get_locked_sujet_from_idcompte(74);

				foreach($Sujets as $n)
				{
			        echo '<form method="post" class="form-solo-choix-sujet large-content row-box justify-center" action="./?page=questions">
								<input type="hidden" name="Sujet" value="'.$n['NomSujet'].'" />
								<button type="submit" class="button-solo unavailable">'.$n['NomSujet'].'
									<span>: A débloquer</span>
								</button>
						  </form>';
				}

			?>
		</section>
	</div>
<?php $content = ob_get_clean(); ?>