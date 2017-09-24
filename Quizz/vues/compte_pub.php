<?php $title = 'Compte'; ?>

<?php ob_start(); ?>
<div class="flex-body">
        <div class="main-box-large">
            <?php// $lol=login_idcompte( $login ); ?>
            
            <section class="off-shadow marge-0 cadre-perso">

                <section class="column-box color-orange2">
                        <img src="CSS/images/photo.jpg" alt="Photo">

                    <div class="column-box flex-1-100">                        

                    	<section class="sub-content-box color-marron">
                            <h3 class="titre-guilde color-red2"><a  class="off-link" href="" ><?php echo "Pseudo"/*.$_GET['Pseudo']*/ ;?></a></h3>
                        </section>

                    	<section class="sub-content-box color-marron">
                            <h3 class="titre-guilde color-red2"><a  class="off-link" href="" >NomGuilde</a></h3>
                        </section>

                        <section class="sub-content-box color-vb">

                            <a  href="?page=Listesucces"><h3 class="off-link">
                            <?php
                                echo "NomSucces |  ";
                                /*if( //PossedeSucces( $login ) ){                              
                                    //$succes=get_pref_succes(login_idcompte( $login ));

                                    //echo $succes;
                                }
                                else{
                                    echo 'Pas de succès débloqué';
                                }*/
                            ?>
                            </h3></a>
                        </section>
                    <section class="sub-content-box color-vb">
                        <h3 class="off-link">STATS</h3>
                    </section>
                    </div>                    

                </section>

                    </section>
                </section>

              
            </section>

        </div>
    </div>



<?php $content = ob_get_clean(); ?>
