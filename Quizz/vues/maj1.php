<?php ?>
  	<!-- Litteraire -->
<?php require_once'../modeles/model.php';?>	





			<div id="test" class="style-menu menu4">
				
				<?php delete_question_defense(1,$_POST['try']);?>
				<?php $banque=get_defense(1); $num=0;?>
				<div class="column-box">
				<?php foreach( $banque as $b ) :$num=$num+1;?>
					  
					<a class="listeQ"><p  class="FontlisteQ "><?php echo $num.'. '; echo substr($b['question'],0,40); ?></p></a>
						
						      
				<?php endforeach ?>
				</div>
			</div>

			<div id="test2" class="style-menu menu4">
				<?php ADD_question_defense(1,$_POST['try'],$_POST['try2']);?>

				<?php $banque=get_defense(1); $num=0;?>
				<div class="column-box">
				<?php foreach( $banque as $b ) :$num=$num+1;?>
					  
					<a class="listeQ"><p  class="FontlisteQ "><?php echo $num.'. '; echo substr($b['question'],0,40); ?></p></a>
						
						      
				<?php endforeach ?>
				</div>
			</div>

<?php ?>
