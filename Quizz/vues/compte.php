<?php $title = 'Accueil'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
	<p>HTML Compte</p>
<?php $content = ob_get_clean(); ?>

<?php include 'layout.inc.php'; ?>