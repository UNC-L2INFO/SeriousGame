<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<!DOCTYPE html>
	<html lang="fr">

		<head>
			<title></title>
			<meta name="Description" content=""/>
			<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
			<link rel="Stylesheet" href="../CSS/bootstrap.min.css" type="text/css">
			<script src="../js/jquery-1.11.2.min.js"></script>
			<script src="../js/bootstrap.min.js"></script>
			<script src="../js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
			<link rel="Stylesheet" href="../CSS/polices.css" type="text/css">
			<link rel="Stylesheet" href="../CSS/styles.css" type="text/css"> 
		</head>

		<body class="accueil">
			<?php require 'layout.inc.php'; ?>
			<div class="flex-body">
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
												<form action="compte.php" method="post">
													<input type="hidden" name="Theme" value="'.$n['NomThème'].'" />
													<button type="submit" class="btn btn-warning" name="'.$n['NomThème'].'">Je choisi ce thème !</button>
												</form>
											</div>
										</div>';
							$tmp .= '</section>';
						}

						echo $tmp;
					?>
				</div>
			</div>
		</body>
	</html>
<?php $content = ob_get_clean(); ?>

<?php include 'layout.inc.php'; ?>