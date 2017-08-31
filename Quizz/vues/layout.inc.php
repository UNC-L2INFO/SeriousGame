

<!doctype html>
<html lang="fr">

	<head>
		<title>Quizz</title>
		<meta name="Description" content="accueil"/>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="Stylesheet" href="../CSS/bootstrap.min.css" type="text/css">
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		<link rel="Stylesheet" href="../CSS/polices.css" type="text/css">
		<link rel="Stylesheet" href="../CSS/styles.css" type="text/css">
	</head>

	<body>
		<nav class="menu-commun">
			<a id="logo" href="#">Q</a>

			<ul class="menu-nav">
				<li><a href="#"><button type="button" class="btn btn-warning">Accueil</button></a></li>
				<li><a href="creer_C.php"><button type="button" class="btn btn-warning">Compte</button></a></li>
				<li><a href="jouer.php"><button type="button" class="btn btn-warning btn-lg">JOUER</button></a></li>
				<li><a href="#"><button type="button" class="btn btn-warning">Ladder</button></a></li>
				<li><a href="#"><button type="button" class="btn btn-warning">Aide</button></a></li>
			</ul>

			<!-- Bouton connecté/déconnecté -->
			<div class="dropdown orange-grey-style bouton-co-deco">
				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
					Connecté &nbsp;<span class="glyphicon glyphicon-cog"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-right">
					<li><a href="#">Se déconnecter &nbsp;<span class="glyphicon glyphicon-off"></span></a></li>
				</ul>
			</div>

			<!-- Bouton responsive -->
			<div class="dropdown orange-grey-style bouton960px">
				<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
					<span class="glyphicon glyphicon-th-large"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#">Jouer</a></li>
					<li><a href="#">Accueil</a></li>
					<li><a href="#">Compte</a></li>
					<li><a href="#">Aide</a></li>
					<li><a href="#">Ladder</a></li>
					<li class="divider"></li>
					<li><a href="#">connecté &nbsp;<span class="glyphicon glyphicon-cog"></span></a></li>
				</ul>
			</div>
		</nav>
		
		<div class="flex-body">
			<?php echo $content; ?>
		</div>
	</body>
</html>
