<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<div class="main-box">
		<section id="section-creer-C" class="column-flex color-red">
			<form class="form-horizontal" method="post" action="?page=succes_creer_C">
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
		</section>
	</div>
<?php $content = ob_get_clean(); ?>

<?php include 'layout.inc.php'; ?>