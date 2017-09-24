<?php ob_start(); ?>
	 <div class="container-fluid">
	 	<section class="container cadreAvatar">
	 		<div class="col-md-12 text-color-white">
				<?php

					/*$ID = get_idcompte_from_pseudo($_POST['pseudo']);*/

					$succes=get_all_succes(1);
				?>
				<h1 class="center-text" >Liste Des Succes</h1>
				<ul>
					<?php foreach( $succes as $s ) : ?>           
								
									<li>             
										<p> <?php echo $s['NomSuccès']; ?> </p> 
											<form method="post" action="?page=compte_perso">  
												<input type="hidden" name="Tsucces" value="<?php echo $s['NomSuccès'] ?>" >             
											    <button type="submit">Choix succes</button>
											</form>        
									</li>
							         
					<?php endforeach ?> 
				</ul>
			</div> 
		</section>
	</div>
<?php $content = ob_get_clean(); ?>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

