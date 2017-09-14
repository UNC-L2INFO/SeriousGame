<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<a href="#">
		<div class="col-md-2 text-center">
			<h1 class="mode" style="text-decoration: none;">
				D<br/>E<br/>F<br/>E<br/>N<br/>S<br/>E
			</h1>		
		</div>
	</a>

	<a href="#">
		<div class="col-md-2 text-center">
			<h1 class="mode" style="text-decoration: none;">
				A<br/>T<br/>T<br/>A<br/>Q<br/>U<br/>E
			</h1>		
		</div>
	</a>

	<a href="./?page=solo_choix_sujet">
		<div class="col-md-2 text-center">
			<h1 class="mode" style="text-decoration: none;">
				C<br/>A<br/>M<br/>P<br/>A<br/>G<br/>N<br/>E
			</h1>
		</div>
	</a>

	<a href="#">
		<div class="col-md-2 text-center">
			<h1 class="mode" style="text-decoration: none;">
				A<br/>R<br/>E<br/>N<br/>E
			</h1>		
		</div>
	</a>

	<a href="#">
		<div class="col-md-2 text-center">
			<h1 class="mode" style="text-decoration: none;">
				G<br/>v<br/>G
			</h1>
		</div>
	</a>

	<a href="#">
		<div class="col-md-2 text-center">
			<h1 class="mode" style="text-decoration: none;">
				E<br/>V<br/>E<br/>N<br/>T
			</h1>
		</div>
	</a>
<?php $content = ob_get_clean(); ?>