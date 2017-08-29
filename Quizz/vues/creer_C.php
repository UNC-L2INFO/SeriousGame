<!doctype html>
<html lang="fr">

	<head>
		<title></title>
		<meta name="Description" content=""/>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
		<link rel="Stylesheet" href="../CSS/polices.css" type="text/css">
		<link rel="Stylesheet" href="../CSS/layout.css" type="text/css">
		<!-- Remplir avec le bon css -->
		<link rel="Stylesheet" href="../CSS/creer_C.css" type="text/css"> 
		<link rel="Stylesheet" href="../CSS/bootstrap.min.css" type="text/css">
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	</head>

	<body class="accueil">

	<?php require 'layout.inc.php'; ?>

	<article class="cadrecreation">
		<form class="form-horizontal" method="post" action="succes_creer_C.php">
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="pseudo">Pseudo :</label>
				<div class="col-sm-12">
					<input type="text" class="form-control" name="pseudo" id="idpseudo" placeholder="Entrez un pseudo">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="ndc">Nom de compte :</label>
				<div class="col-sm-12"> 
					<input type="text" class="form-control" name="ndc" id="idndc" placeholder="Entrez un nom de compte">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="mdp">Mot de passe :</label>
				<div class="col-sm-12"> 
					<input type="password" class="form-control" name="mdp" id="idmdp" placeholder="Entrez un mot de passe (au moins 8 caractères)">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="mdp-confirm">Confirmation :</label>
				<div class="col-sm-12"> 
					<input type="password" class="form-control" name="mdp-confirm" id="idmdp-confirm" placeholder="Confirmez votre mot de passe">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="email">Email :</label>
				<div class="col-sm-12">
					<input type="text" class="form-control" name="email" id="idemail" placeholder="Entrez votre email">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="prenom">Prenom :</label>
				<div class="col-sm-12"> 
					<input type="text" class="form-control" name="prenom" id="idprenom" placeholder="Entrez votre prénom">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="nom">Nom :</label>
				<div class="col-sm-12"> 
					<input type="text" class="form-control" name="nom" id="idnom" placeholder="Entrez votre nom">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-12" style="text-align: left; width: 100%;" for="age">Date naissance :</label>
				<div class="col-sm-12"> 
					<input type="text" class="form-control" name="age" id="idage" placeholder="JJ/MM/AAAA">
				</div>
			</div>
			<div class="form-group"> 
				<div class="col-sm-12">
					<button type="submit" class="btn btn-default">Valider</button>
				</div>
			</div>
		</form>
	</article>

	</body>
</html>