<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<div class="main-box">
		<?php 
			$theme = get_distinct_theme(); 

			$tmp = '';
			foreach($theme as $n)
			{
		        $tmp .= '<section class="section-choix-theme color-paleyellow column-box justify-around">';
					$tmp .= '<h1 class="h1-choix-theme">'.$n['NomThème'].'</h1>
							<p class="description-choix-theme">'.$n['DescriptionSujet'].'</p>
							<div class="form-group validation-choix-theme"> 
								<div class="col-sm-12">
									<form action="?page=compte" method="post">
										<input type="hidden" name="Theme" value="'.$n['NomThème'].'" />
										<button type="submit" class="btn btn-warning">Je choisi ce thème !</button>
									</form>
								</div>
							</div>';
				$tmp .= '</section>';
			}

			echo $tmp;
		?>
	</div>
<?php $content = ob_get_clean(); ?>