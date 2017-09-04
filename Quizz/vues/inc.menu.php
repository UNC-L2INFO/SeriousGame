<?php ob_start(); ?>
	<nav class="menu-commun">
		<a id="logo" href="#">Q</a>

		<ul class="menu-nav">
			<li><a href="./?page=accueil"><button class="btn btn-warning">Accueil</button></a></li>
			<li><a href="./?page=creer_C"><button class="btn btn-warning">Compte</button></a></li>
			<li><a href="./?page=jouer"><button class="btn btn-warning btn-lg">JOUER</button></a></li>
			<li><a href="./?page=ladder"><button class="btn btn-warning">Ladder</button></a></li>
			<li><a href="./?page=aide"><button class="btn btn-warning">Aide</button></a></li>
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
<?php $menu = ob_get_clean(); ?>
