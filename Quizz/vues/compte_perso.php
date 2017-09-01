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
		<title></title>
		<meta name="Description" content=""/>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
		<link rel="Stylesheet" href="../css/polices.css" type="text/css">
		<!-- Remplir avec le bon css -->
		<link rel="Stylesheet" href="css/styles.css" type="text/css"> 
		<link rel="Stylesheet" href="css/bootstrap.min.css" type="text/css">
	</head>

	<body >
        <div class="flex-body">
    		<div class="main-box-large">
    			<?php $lol=login_idcompte( $login ); ?>
                
                <section class="row-box off-shadow marge-0">

                    <section class="column-box color-blue">
                            <img src="CSS/images/photo.jpg" alt="Photo">

                        <div class="column-box flex-1-100">
                            <section class="sub-content-box color-vb">
                                <h3>
                                <?php
                                    echo "NomSucces |  ";
                                    if( PossedeSucces( $login ) ){                              
                                        $succes=get_pref_succes(login_idcompte( $login ));

                                        echo $succes;
                                    }
                                    else{
                                        echo 'Pas de succès débloquer';
                                    }
                                ?>
                                </h3>
                            </section>
                            <section class="sub-content-box color-vb">
                                <h3>
                                <?php
                                    if( PossedeSucces( $login ) ){                              
                                        echo "NomBonus | ";
                                    }
                                    else{
                                        echo 'Pas de succès débloquer';
                                    }
                                ?>
                                <!-- <?php 
                                    $lol=login_idcompte( $login );
                                    //echo $lol; 
                                ?> -->
                            </section>
                        <section class="sub-content-box color-vb">
                            <a class="" href="">Préparer sa défense/Voir Défense</a>
                        </section>
                        <section class="sub-content-box color-vb">
                            <h3>STATS</h3>
                        </section>
                        </div>                    

                    </section>

                    <section class="column-box color-red ">
                        <section class="sub-content-box color-yellow">
                            <section class="sub-content-box borderless ">
                                <h3 class="titre-guilde color-red2"><a href="" >NomGuilde</a></h3>
                            </section>
                            <section class="sub-content-box text-color-white color-red">
                                <p>Description de la guilde wesh alors tchikita <br></br><br></br><br></br><br></br></p>
                            </section>
                        </section>

                        <!-- Classement -->
                        <section class="color-yellow" >
                                <h3>TOP 10 DES JOUEURS</h3>
                                <ul>
                                    <li>Joueur 1</li>
                                    <li>Joueur 2</li>
                                    <li>Joueur 3</li>
                                    <li>Joueur 4</li>
                                    <li>Joueur 5</li>
                                    <li>Joueur 6</li>
                                    <li>Joueur 7</li>
                                    <li>Joueur 8</li>
                                    <li>Joueur 9</li>
                                    <li>Joueur 10</li>
                                </ul>
                                <h3>TOP 10 DES GUILDES</h3>
                                <ul>
                                    <li>Joueur 1</li>
                                    <li>Joueur 2</li>
                                    <li>Joueur 3</li>
                                    <li>Joueur 4</li>
                                    <li>Joueur 5</li>
                                    <li>Joueur 6</li>
                                    <li>Joueur 7</li>
                                    <li>Joueur 8</li>
                                    <li>Joueur 9</li>
                                    <li>Joueur 10</li>
                                </ul>
                        </section>
                    </section>
                    <!-- Social -->
                    <section class="color-green">
                        
                        <?php  $amis=array();
                            if ( PossedeAmis( login_idcompte( $login ) ) ) {
                                $amis=get_all_friends(login_idcompte( $login ));
                            }
                        ?> 
                            <?php foreach( $amis as $a ) : ?> 

                                    <section class="color-orange">
                                        <p> <?php echo $a['PseudoCompte']; ?> </p>
                                    </section>
                                
                            <?php endforeach ?> 



                           


                    </section>
                </section>
                <!-- Partie Stats ou Carte ou Autre -->
                <section>
                </section>
            </div>
        </div>
	</body>
</html>
