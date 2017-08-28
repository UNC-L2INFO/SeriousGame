<?php $title= 'Exemple Blog Basic PHP: Connexion'; ?>
<!DOCTYPE html> 
<html lang="fr">  
	
	<head>        
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />

		<title>ConnectionCompte</title>

		<!-- css -->
		<link href="vue/css/bootstrap.min.css" rel="stylesheet" >
		<link href="vue/css/styles.css" rel="stylesheet" >  
	</head>
	<body>
	<!-- Navigation -->


   
    <!-- Page Content -->
    <div class="container-fluid">
    <a id="debut"> </a>
        <div class="container">
            <div class="row">
                <article class="col-md-offset-3 col-md-6 cadreconnection">
                <!--<?php //ob_start(); ?> -->
                    <form method="post" action="index.php">
                            <label for="login"> Nom de Compte: </label>
                                <input class="ndcentrer" type="text" name="login" id="login" placeholder="Login" maxlength="12" required />
                                <br />
                            <label for="idpassword"> Votre mot de passe: </label>
                        <input type="password" name="password" id="password" placeholder="Password" maxlength="12" required />
                        <input class="boutonenvoyer" type="submit" value="Envoyer">
                    </form>
                <!--<?php $content //= ob_get_clean(); ?>-->


                         <a href="" class="creerC">Créer un compte</a>
                 </article>
            </div>
        </div>
    </div>

    <?php // include 'layout.php'; ?>
    <footer>

    </footer>




    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

	</body>
</html>