<?php $title = 'Connecter'; ?>
<?php $desc = 'Page d\'accueil affichant les news, le top 10 du classement, les patch notes et d\'autres informations'; ?>

<?php ob_start(); ?>
   <!-- Page Content -->
    <div class="flex-body">
    <a id="debut"> </a>
        <div class="main-box-medium">
            <section class="l">
                <form method="post" action="?page=compte_perso">
                        <label for="login"> Nom de Compte: </label>
                            <input type="text" name="login" id="login" placeholder="Login" maxlength="12" />
                            <br />
                        <label for="idpassword"> Votre mot de passe: </label>
                    <input type="password" name="password" id="password" placeholder="Password" maxlength="12" />
                    <input type="submit" value="Envoyer">
                </form>
                <a href="">Créer un compte</a>
             </section>
         </div>
    </div>
<?php $content = ob_get_clean(); ?>