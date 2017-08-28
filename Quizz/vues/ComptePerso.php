<?php
    if( $login == ''){
        header( "refresh:1;url=index.php" );
        echo "Nom de Compte ou Mot de passe Incorrect";
        exit;
    }
?>
<!DOCTYPE html> 
<html lang="fr">  
	
	<head>        
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />

		<title>Compte</title>

		<!-- css -->
		<link href="vue/css/bootstrap.min.css" rel="stylesheet" >
		<link href="vue/css/styles.css" rel="stylesheet" >  
	</head>
	<body>

	<!-- Navigation -->
   
    <!-- Page Content -->
    <div class="container-fluid">
    <a id="debut"> </a>
    	<div class="container cadreAvatar">
    		<div class="row">
                <article class="col-md-3">
					<img src="css/images/photo.jpg" alt="Photo">
    			</article>
    			<article class="col-md-6">
                    <p class="soustitre">
                        <?php
                            if( PossedeSucces( $login ) ){                              
                                echo "Ta un Succes";
                            }
                            else{
                                echo 'Pas de succès débloquer';
                            }
                        ?>
                    <a href="">Bonus</a> </p><!-- A mettre en dynamique -->
                    <p class="soustitre">Bonus Acquis : Titre Bonus <a href="">Bonus</a> </p><!-- A mettre en dynamique -->
                    <a class="asoustitre" href="">Préparer sa défense/Voir Défense</a>
    			</article>
    		</div>
    	</div>
    
        

        <div class="container cadreGC ">
            <div class="row">

                <article class="col-md-4 cadreguilde">
                    <p class="Nomguilde"><a href="" >NomGuilde</a></p>
                    <p class="soustitre descriptionGuilde">Description de la guilde</p>
                    <a class="niveauguilde">NG</a>
                </article>

                <article class="col-md-1 separation">
                </article>

                 <article class="col-md-7 align ">
                    <aside class="acadreclassement">
                        <p class="titreclassement"><a href="">ClassementGuilde</a></p>
                        <p class="listeclassement"></p>
                    </aside>
                    <div class="cadreclassement">
                        <p class="titreclassement"><a href="">ClassementSolo</a></p>
                        <p class="listeclassement"></p>
                    </div>
                </article>

            </div>
        </div>
        

        <div class="container">
           <div class="row">
                <article class="col-md-5 multibouton">
                    <p class="soustitre">Recherche joueur</p>
                    <p class="soustitre">Recherche Guilde</p>
                    <p class="soustitre "><a>Parcourir les succés</a></p>
                    <p class="soustitre "><a>Parcourir les bonus</a></p>

                </article>
                <article class="col-md-1 separation">
            </article>

                <article class="col-md-6 cadreListeAmis">
            </article>
        </div>

         <div class="row">
                <article class="col-md-12 cadremessage">
                    <p>Message...</p>
            </article>
        </div>

        <div class="row">
                <article class="col-md-12 cadrequestion">
                    <table  class="tquestion">
                        <tr>
                            <td>Trier Par:</td>
                            <td><a class="BQ espace">theme</a></td>
                            <td><a class="BQ espace">sujet</a></td>
                            <td><a class="BQ espace">niveau</a></td>
                        </tr>

                       
                            
                      
                    </table>
                    <p class="question">Question:</p>
                    <table  class="tquestion">
                       <tr>
                            <td class="reponse">Reponse1</td>
                            <td class="reponse">Reponse2</td>
                            <td class="reponse">Reponse3</td>
                            <td class="reponse">Reponse4</td>
                        </tr>
                    </table>
            </article>
        </div>
        </div>







</div>
<footer>
</footer>




<script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>