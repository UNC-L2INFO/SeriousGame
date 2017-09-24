<?php $title = 'The Bank'; ?>

<?php ob_start(); ?>

<div class="container ">
	 <div class="container-fluid col-md-12">
	 	
	 	<div id="premier" class="col-md-8 col-md-offset-4 col-xl-8 col-xl-offset-4 col-xs-12">
			 	<div id="Histoire">
					<?php $question=get_all_question_SUJET(1,"Histoire");?>
					<h1 class="SujetQ style-question "><?php echo $question[0]['NomSujet']?></h1>
					<?php foreach( $question as $q ) : ?>
						<div class="style-question row-box col-md-12 col-xs-12 col-xl-12 color-LightBlue">
					  		<div class="btn-group">
							   <p>
							       <select name="AjoutQ" id=<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>>
							           <option value="Q1">1</option>
							           <option value="Q2">2</option>
							           <option value="Q3">3</option>
							           <option value="Q4">4</option>
							           <option value="Q5">5</option>
							           <option value="Q6">6</option>
							           <option value="Q7">7</option>
							           <option value="Q8">8</option>
							           <option value="Q9">9</option>
							           <option value="Q10">10</option>
							       </select>

							       	<button class="B-ajout" id=<?php echo "'".$q['IDQuestion']."'"; ?> >+</button>
									<script>
										document.getElementById(<?php echo '"'.$q['IDQuestion'].'"'; ?>).onclick = function() {Ajout<?php echo $q['IDQuestion']; ?>()};
										function Ajout<?php echo $q['IDQuestion']; ?>() {
											 document.getElementById(<?php echo '"lol'.$q['IDQuestion'].'"'; ?>).innerHTML = document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value;
											 $('#Defense').load('vues/maj1.php #test2',{try:document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value,try2:<?php echo '"'.$q['IDQuestion'].'"'; ?> },function(){
												});
									

										}
									</script>
							   </p>
					  		</div>

							<div class="col-md-12 col-xs-12 col-xl-12 ">
									<h1></h1>
									<div class="box-question text-question color-LightGrey"><?php echo $q['Question']?>
									</div>
									<div class="row-box">
										<div class="box-reponse text-rep color-LightGrey">
											<p><?php echo $q['bonnerep']?></p>
										</div>
										<div class="box-question-D text-rep color-LightGrey">
											<p><?php echo $q['mauvaiserep1']?></p>
										</div>
									</div>
									<div class="row-box">
										<div class="box-question-G text-rep color-LightGrey">
											<p><?php echo $q['mauvaiserep2']?></p>
										</div>
										<div class="box-question-D text-rep color-LightGrey">
											<p><?php echo $q['mauvaiserep3']?></p>
										</div>
									</div>
							</div>
						</div>
					<?php endforeach ?>
				</div>
					<div>
					<?php $question=get_all_question_SUJET(1,"Livre");?>
					<h1 id="Livre" class="SujetQ style-question "><?php echo $question[0]['NomSujet']?></h1>
					<?php foreach( $question as $q ) : ?>
				<div class="style-question row-box col-md-12 col-xs-12 col-xl-12 color-LightBlue">
										  		<div class="btn-group">
							   <p>
							       <label for="AjoutQ">Ajout</label>
							       <select name="AjoutQ" id=<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>>
							           <option value="Q1">1</option>
							           <option value="Q2">2</option>
							           <option value="Q3">3</option>
							           <option value="Q4">4</option>
							           <option value="Q5">5</option>
							           <option value="Q6">6</option>
							           <option value="Q7">7</option>
							           <option value="Q8">8</option>
							           <option value="Q9">9</option>
							           <option value="Q10">10</option>
							       </select>

							       	<button class="B-ajout" id=<?php echo "'".$q['IDQuestion']."'"; ?> >+</button>
									<script>
										document.getElementById(<?php echo '"'.$q['IDQuestion'].'"'; ?>).onclick = function() {Ajout<?php echo $q['IDQuestion']; ?>()};
										function Ajout<?php echo $q['IDQuestion']; ?>() {
											 document.getElementById(<?php echo '"lol'.$q['IDQuestion'].'"'; ?>).innerHTML = document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value;
											 $('#Defense').load('vues/maj1.php #test2',{try:document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value,try2:<?php echo '"'.$q['IDQuestion'].'"'; ?> },function(){
												});
									

										}
									</script>
							   </p>
					  		</div>
					<div class="col-md-12 col-xs-12 col-xl-12 ">
						<h1></h1>
						<div class="box-question text-question color-LightGrey"><?php echo $q['Question']?></div>
							<div class="row-box">
								<div class="box-reponse text-rep color-LightGrey">
									<p><?php echo $q['bonnerep']?></p>
								</div>
								<div class="box-question-D text-rep color-LightGrey">
									<p><?php echo $q['mauvaiserep1']?></p>
								</div>
							</div>
							<div class="row-box">
								<div class="box-question-G text-rep color-LightGrey">
									<p><?php echo $q['mauvaiserep2']?></p>
								</div>
								<div class="box-question-D text-rep color-LightGrey">
									<p><?php echo $q['mauvaiserep3']?></p>
								</div>
							</div>
						</div>
					
				</div>
			<?php endforeach ?>
		</div>
<div id="Asujet3">
		<?php $question=get_all_question_SUJET(1,"Francais");?>
					<h1 id="Francais" class="SujetQ style-question "><?php echo $question[0]['NomSujet']?></h1>
		<?php foreach( $question as $q ) : ?>
		<div class="style-question row-box col-md-12 col-xs-12 col-xl-12 color-LightBlue">
										  		<div class="btn-group">
							   <p>
							       <label for="AjoutQ">Ajout</label>
							       <select name="AjoutQ" id=<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>>
							           <option value="Q1">1</option>
							           <option value="Q2">2</option>
							           <option value="Q3">3</option>
							           <option value="Q4">4</option>
							           <option value="Q5">5</option>
							           <option value="Q6">6</option>
							           <option value="Q7">7</option>
							           <option value="Q8">8</option>
							           <option value="Q9">9</option>
							           <option value="Q10">10</option>
							       </select>

							       	<button class="B-ajout" id=<?php echo "'".$q['IDQuestion']."'"; ?> >+</button>
									<script>
										document.getElementById(<?php echo '"'.$q['IDQuestion'].'"'; ?>).onclick = function() {Ajout<?php echo $q['IDQuestion']; ?>()};
										function Ajout<?php echo $q['IDQuestion']; ?>() {
											 document.getElementById(<?php echo '"lol'.$q['IDQuestion'].'"'; ?>).innerHTML = document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value;
											 $('#Defense').load('vues/maj1.php #test2',{try:document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value,try2:<?php echo '"'.$q['IDQuestion'].'"'; ?> },function(){
												});
									

										}
									</script>
							   </p>
					  		</div>			
			<div class="col-md-12 col-xs-12 col-xl-12 ">
				<h1></h1>
				<div class="box-question text-question color-LightGrey"><?php echo $q['Question']?></div>
					<div class="row-box">
						<div class="box-reponse text-rep color-LightGrey">
							<p><?php echo $q['bonnerep']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep1']?></p>
						</div>
					</div>
					<div class="row-box">
						<div class="box-question-G text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep2']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep3']?></p>
						</div>
					</div>
				</div>
			
		</div>
		<?php endforeach ?>
		</div>

	



	<!-- Artiste -->


	<!-- Scientifique -->
		<div id="Asujet7">
		<?php $question=get_all_question_SUJET(1,"Mathématique");?>
					<h1 id="Mathématique" class="SujetQ style-question "><?php echo $question[0]['NomSujet']?></h1>
		<?php foreach( $question as $q ) : ?>
		<div class="style-question row-box col-md-12 col-xs-12 col-xl-12 color-Orange">
										  		<div class="btn-group">
							   <p>
							       <label for="AjoutQ">Ajout</label>
							       <select name="AjoutQ" id=<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>>
							           <option value="Q1">1</option>
							           <option value="Q2">2</option>
							           <option value="Q3">3</option>
							           <option value="Q4">4</option>
							           <option value="Q5">5</option>
							           <option value="Q6">6</option>
							           <option value="Q7">7</option>
							           <option value="Q8">8</option>
							           <option value="Q9">9</option>
							           <option value="Q10">10</option>
							       </select>

							       	<button class="B-ajout" id=<?php echo "'".$q['IDQuestion']."'"; ?> >+</button>
									<script>
										document.getElementById(<?php echo '"'.$q['IDQuestion'].'"'; ?>).onclick = function() {Ajout<?php echo $q['IDQuestion']; ?>()};
										function Ajout<?php echo $q['IDQuestion']; ?>() {
											 document.getElementById(<?php echo '"lol'.$q['IDQuestion'].'"'; ?>).innerHTML = document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value;
											 $('#Defense').load('vues/maj1.php #test2',{try:document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value,try2:<?php echo '"'.$q['IDQuestion'].'"'; ?> },function(){
												});
									

										}
									</script>
							   </p>
					  		</div>			
			<div class="col-md-12 col-xs-12 col-xl-12 ">
				<h1></h1>
				<div class="box-question text-question color-LightGrey"><?php echo $q['Question']?></div>
					<div class="row-box">
						<div class="box-reponse text-rep color-LightGrey">
							<p><?php echo $q['bonnerep']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep1']?></p>
						</div>
					</div>
					<div class="row-box">
						<div class="box-question-G text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep2']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep3']?></p>
						</div>
					</div>
				</div>
			
		</div>
		<?php endforeach ?>
		</div>
	<div id="Asujet8">
		<?php $question=get_all_question_SUJET(1,"Physique");?>
					<h1 id="Physique" class="SujetQ style-question "><?php echo $question[0]['NomSujet']?></h1>
		<?php foreach( $question as $q ) : ?>
		<div class="style-question row-box col-md-12 col-xs-12 col-xl-12 color-Orange">
										  		<div class="btn-group">
							   <p>
							       <label for="AjoutQ">Ajout</label>
							       <select name="AjoutQ" id=<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>>
							           <option value="Q1">1</option>
							           <option value="Q2">2</option>
							           <option value="Q3">3</option>
							           <option value="Q4">4</option>
							           <option value="Q5">5</option>
							           <option value="Q6">6</option>
							           <option value="Q7">7</option>
							           <option value="Q8">8</option>
							           <option value="Q9">9</option>
							           <option value="Q10">10</option>
							       </select>

							       	<button class="B-ajout" id=<?php echo "'".$q['IDQuestion']."'"; ?> >+</button>
									<script>
										document.getElementById(<?php echo '"'.$q['IDQuestion'].'"'; ?>).onclick = function() {Ajout<?php echo $q['IDQuestion']; ?>()};
										function Ajout<?php echo $q['IDQuestion']; ?>() {
											 document.getElementById(<?php echo '"lol'.$q['IDQuestion'].'"'; ?>).innerHTML = document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value;
											 $('#Defense').load('vues/maj1.php #test2',{try:document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value,try2:<?php echo '"'.$q['IDQuestion'].'"'; ?> },function(){
												});
									

										}
									</script>
							   </p>
					  		</div>			
			<div class="col-md-12 col-xs-12 col-xl-12 ">
				<h1></h1>
				<div class="box-question text-question color-LightGrey"><?php echo $q['Question']?></div>
					<div class="row-box">
						<div class="box-reponse text-rep color-LightGrey">
							<p><?php echo $q['bonnerep']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep1']?></p>
						</div>
					</div>
					<div class="row-box">
						<div class="box-question-G text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep2']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep3']?></p>
						</div>
					</div>
				</div>
			
		</div>
		<?php endforeach ?>
		</div>
	
<div id="Asujet9">
		<?php $question=get_all_question_SUJET(1,"SVT");?>
					<h1 id="SVT" class="SujetQ style-question "><?php echo $question[0]['NomSujet']?></h1>
		<?php foreach( $question as $q ) : ?>
		<div class="style-question row-box col-md-12 col-xs-12 col-xl-12 color-Orange">
										  		<div class="btn-group">
							   <p>
							       <label for="AjoutQ">Ajout</label>
							       <select name="AjoutQ" id=<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>>
							           <option value="Q1">1</option>
							           <option value="Q2">2</option>
							           <option value="Q3">3</option>
							           <option value="Q4">4</option>
							           <option value="Q5">5</option>
							           <option value="Q6">6</option>
							           <option value="Q7">7</option>
							           <option value="Q8">8</option>
							           <option value="Q9">9</option>
							           <option value="Q10">10</option>
							       </select>

							       	<button class="B-ajout" id=<?php echo "'".$q['IDQuestion']."'"; ?> >+</button>
									<script>
										document.getElementById(<?php echo '"'.$q['IDQuestion'].'"'; ?>).onclick = function() {Ajout<?php echo $q['IDQuestion']; ?>()};
										function Ajout<?php echo $q['IDQuestion']; ?>() {
											 document.getElementById(<?php echo '"lol'.$q['IDQuestion'].'"'; ?>).innerHTML = document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value;
											 $('#Defense').load('vues/maj1.php #test2',{try:document.getElementById(<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>).value,try2:<?php echo '"'.$q['IDQuestion'].'"'; ?> },function(){
												});
									

										}
									</script>
							   </p>
					  		</div>			
			<div class="col-md-12 col-xs-12 col-xl-12 ">
				<h1></h1>
				<div class="box-question text-question color-LightGrey"><?php echo $q['Question']?></div>
					<div class="row-box">
						<div class="box-reponse text-rep color-LightGrey">
							<p><?php echo $q['bonnerep']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep1']?></p>
						</div>
					</div>
					<div class="row-box">
						<div class="box-question-G text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep2']?></p>
						</div>
						<div class="box-question-D text-rep color-LightGrey">
							<p><?php echo $q['mauvaiserep3']?></p>
						</div>
					</div>
				</div>
			
		</div>
		<?php endforeach ?>
		</div>

	</div>
		




		<div class="row panel-sujet col-xl-3 scroll-bar">
		 	<div class="theme-panel theme-defense"><label for="toggle4">Ma Défense</label></div>
			<input type="checkbox" id="toggle4">
			<aside class="ListeSup">
				<ul>
					<li class="X"><button id="majDefense1" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense2" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense3" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense4" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense5" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense6" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense7" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense8" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense9" class="Supprimer">X</button></li>
					<li class="X"><button id="majDefense10" class="Supprimer">X</button></li>
				</ul>
			</aside>

			<div id="Defense" class="style-menu menu4">
				<?php $banque=get_defense(1); $num=0;?>
				<div class="column-box scroll-bar-1">
				<?php foreach( $banque as $b ) :$num=$num+1;?>
					  
					<a class="listeQ"><p  class="FontlisteQ "><?php echo $num.'. '; echo substr($b['question'],0,40); ?></p></a>
				<?php endforeach ?>
				</div>
			</div>


			<div class="theme-panel color-LightBlue"><label for="toggle">Littérature</label></div>
			<input type="checkbox" id="toggle">
			<div class="style-menu menu">
	 			<?php $sujet=sujet_posseder_Litterature(1);$t=5;?>
				<?php foreach( $sujet as $s ) : ?> 
      
					<a href="#<?php echo $s['NomSujet']; ?>" class="curseur" id="<?php echo $s['NomSujet']?>"><?php echo $s['NomSujet']; ?></a>
				<?php endforeach ?>
			</div>

			<div class="theme-panel color-Yellow"><label for="toggle2">Artiste</label></div>
			<input type="checkbox" id="toggle2">
			<div class="style-menu menu2">
				<?php $sujet2=sujet_posseder_Artiste(1);?>
				<?php foreach( $sujet2 as $s2 ) : ?>
        
					<a href="#<?php echo $s2['NomSujet']; ?>" class="curseur" id="<?php echo $s2['NomSujet']?>"><?php echo $s2['NomSujet']; ?></a>        
		
				<?php endforeach ?>
			</div>

			<div class="theme-panel color-Orange"><label for="toggle3">Scientifique</label></div>
			<input type="checkbox" id="toggle3">
			<div class="style-menu menu3">
				<?php $sujet3=sujet_posseder_Scientifique(1);?>
				<?php foreach( $sujet3 as $s3 ) : ?>
        
					<a href="#<?php echo $s3['NomSujet']; ?>" class="curseur" id="<?php echo $s3['NomSujet']?>"><?php echo $s3['NomSujet']; ?></a>
				<?php endforeach ?>
			</div>
		</div>


		
    </div>
</div>


<footer>
<?php echo '"QuestionAjout'.$q['IDQuestion'].'"'; ?>
<?php echo '"'.$q['IDQuestion'].'"'; ?>
</footer>

<script>



	$(function() {



	document.getElementById("majDefense1").onclick = function() {myFunction1()};
	function myFunction1() {
		$('#Defense').load('vues/maj1.php #test',{try:1 },function(){
		});
	}

	document.getElementById("majDefense2").onclick = function() {myFunction2()};
	function myFunction2() {
		$('#Defense').load('vues/maj1.php #test',{try:2 },function(){
		});
	}

	document.getElementById("majDefense3").onclick = function() {myFunction3()};
	function myFunction3() {
		$('#Defense').load('vues/maj1.php #test',{try:3 },function(){
		});
	}
	
	document.getElementById("majDefense4").onclick = function() {myFunction4()};
	function myFunction4() {
		$('#Defense').load('vues/maj1.php #test',{try:4 },function(){
		});
	}

	document.getElementById("majDefense5").onclick = function() {myFunction5()};
	function myFunction5() {
		$('#Defense').load('vues/maj1.php #test',{try:5 },function(){
		});
	}
	
	document.getElementById("majDefense6").onclick = function() {myFunction6()};
	function myFunction6() {
		$('#Defense').load('vues/maj1.php #test',{try:6 },function(){
		});
	}

	document.getElementById("majDefense7").onclick = function() {myFunction7()};
	function myFunction7() {
		$('#Defense').load('vues/maj1.php #test',{try:7 },function(){
		});
	}
	
	document.getElementById("majDefense8").onclick = function() {myFunction8()};
	function myFunction8() {
		$('#Defense').load('vues/maj1.php #test',{try:8 },function(){
		});
	}

	document.getElementById("majDefense9").onclick = function() {myFunction9()};
	function myFunction9() {
		$('#Defense').load('vues/maj1.php #test',{try:9 },function(){
		});
	}
	
	document.getElementById("majDefense10").onclick = function() {myFunction10()};
	function myFunction10() {
		$('#Defense').load('vues/maj1.php #test',{try:10 },function(){
		});
	}

});
		
		
</script>


<?php $content = ob_get_clean(); ?>
