<?php $title = 'Compte'; ?>
<?php
if(!empty($_POST['Tsucces'])) // Si le formulaire est envoyé.          
{  
    choose_succes($_POST['Tsucces'],1);
}
$login=$_POST['login'];
?>
<?php ob_start(); ?>
<div class="flex-body">
        <div class="main-box-large">
            <?php $lol=login_idcompte( $login ); ?>
            
            <section class="row-box off-shadow marge-0">

                <section class="column-box color-blue">
                    <img src="CSS/images/photo.jpg" alt="Photo">

                    <div class="column-box flex-1-100">
                        <section class="sub-content-box color-vb">
                            <a  href="?page=Listesucces"><h3 class="off-link">
                            <?php
                                echo "NomSucces |  ";
                                if( PossedeSucces( $login ) ){                              
                                    $succes=get_pref_succes(login_idcompte( $login ));

                                    echo $succes;
                                }
                                else{
                                    echo 'Pas de succès débloqué';
                                }
                            ?>
                            </h3></a>
                        </section>
                        <section class="sub-content-box color-vb">
                            <h3 class="off-link">
                            <?php
                                if( PossedeSucces( $login ) ){                              
                                    echo "NomBonus | ";
                                }
                                else{
                                    echo 'Pas de Bonus débloqué';
                                }
                            ?>
                            <!-- <?php 
                                $lol=login_idcompte( $login );
                                //echo $lol; 
                            ?> -->
                        </section>
                    <section class="sub-content-box color-vb">
                        <a class="off-link" href=""><h3>Préparer sa défense/Voir Défense</h3></a>
                    </section>
                    <section class="sub-content-box color-vb">
                        <h4>StatsAttaque:</h4>
                        <div class="progress">
                                <?php $WinP=( ( get_PartieJ_Att( 1 )-get_PartieP_Att( 1 ) )/get_PartieJ_Att( 1 ) )*100;?>
                                <?php $LooseP=100-$WinP;?>

                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow=<?php echo '"'.$WinP.'"' ?>
                              aria-valuemin="0" aria-valuemax="100" style=<?php echo '"width:'.$WinP.'%"' ?>>
                                Gagnées:<?php $Win=get_PartieJ_Att( 1 )-get_PartieP_Att( 1 ); echo $Win; ?>
                              </div><div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow=<?php echo '"'.$LooseP.'"' ?>
                              aria-valuemin="50" aria-valuemax="100" style=<?php echo '"width:'.$LooseP.'%"' ?>>
                                Perdus:<?php echo get_PartieP_Att( 1 ); ?>
                              </div>
                        </div>
                        <h4>StatsDefense:</h4>
                        <div class="progress">
                                <?php $WinP=( ( get_PartieJ_Deff( 1 )-get_PartieP_Deff( 1 ) )/get_PartieJ_Deff( 1 ) )*100;?>
                                <?php $LooseP=100-$WinP;?>

                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow=<?php echo '"'.$WinP.'"' ?>
                              aria-valuemin="0" aria-valuemax="100" style=<?php echo '"width:'.$WinP.'%"' ?>>
                                Gagnées:<?php $Win=get_PartieJ_Deff( 1 )-get_PartieP_Deff( 1 ); echo $Win; ?>
                              </div><div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow=<?php echo '"'.$LooseP.'"' ?>
                              aria-valuemin="50" aria-valuemax="100" style=<?php echo '"width:'.$LooseP.'%"' ?>>
                                Perdus:<?php echo get_PartieP_Deff( 1 ); ?>
                              </div>
                        </div>
                    </section>
                    </div>                    

                </section>

                <section class="column-box color-red ">

<div class="holder">
  <div class="bubbleholder">
    <section class="bubble"><h1 class="Textebubble"><?php echo get_pseudo_fromID(1);  ?></h1>
                            <h3 class="Textebubble droite-G1">PointSolo:<?php echo get_pointSolo_fromID(1);  ?></h3>
                            <h3 class="Textebubble droite-T1">Classement:10</h3>
    </section>
  </div>
</div>


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

                                <section class="Lamis">
                                    <p > <?php echo 'Pseudo:  '.$a['PseudoCompte'].' PointsSolo:  ';echo $a['PointsSolo'].' NomAvatar:   ';echo $a['NomAvatar']; ?> </p>
                                </section>
                            
                        <?php endforeach ?> 



                       


                </section>
            </section>
            <!-- Partie Stats ou Carte ou Autre -->
            <section>
            </section>
        </div>
    </div>



<?php $content = ob_get_clean(); ?>
