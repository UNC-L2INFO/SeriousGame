<?php  

function open_database_connection(){         
	$link = mysqli_connect('localhost', 'root', '', 'quizzv1');  
	mysqli_set_charset($link,'utf8');    
	return $link;     
} 

function close_database_connection($link){         
	mysqli_close($link);     
}   

function is_user( $login, $password ){
	$isuser = False ;            
	$link = open_database_connection();                  
	$query= 'SELECT NDCCompte FROM InfoCompte WHERE NDCCompte="'.$login.'" and MDPCompte="'.$password.'"';         
	$result = mysqli_query($link, $query );
	if( mysqli_num_rows( $result) )             
		$isuser = True; 
	mysqli_free_result( $result );         
	close_database_connection($link); 
	return $isuser;     
}

function login_idcompte( $login ){
	$link = open_database_connection();
	$query= 'SELECT IDCompte FROM infocompte WHERE NDCCompte ="'.$login.'"';
	$idcompte= mysqli_query($link, $query ); 
	$res = mysqli_fetch_array($idcompte);
	$resu=$res['IDCompte'];
	close_database_connection($link);
	return $resu;
}

function PossedeSucces( $login ){
	$succes = False ;
	$link = open_database_connection();
	$query= 'SELECT NomSuccès FROM adébloquessuccès WHERE IDCompte =( SELECT IDCompte FROM infocompte WHERE NDCCompte ="'.$login.'" )';
	$result = mysqli_query($link, $query );
	if( mysqli_num_rows( $result) )        
		$succes = True;
	
	mysqli_free_result( $result );    
	close_database_connection($link);
	return $succes;
}

function get_all_succes( $id ){         
	$link = open_database_connection();                  
	$query=' SELECT NomSuccès FROM adébloquessuccès WHERE IDCompte="'.$id.'" ';
	$resultall = mysqli_query($link,$query);        
	$succes = array();      
	while ($row = mysqli_fetch_array($resultall)) {             
         	$succes[] = $row;         
	}
    mysqli_free_result( $resultall);                   
    close_database_connection($link); 
    return $succes;     
}

/* Need avis requetes sales, creation bdd flem */
function get_pref_succes($id){
	$link = open_database_connection();                
	$query='SELECT NomSuccès FROM adébloquessuccès WHERE NomSuccès =succèsactif AND IDCompte="'.$id.'" ';
	$resultat = mysqli_query($link,$query);        
	$res = mysqli_fetch_array($resultat); 
	$resu=$res['NomSuccès'];                      
    close_database_connection($link); 

    return $resu;
}

function get_all_bonus($id){         
	$link = open_database_connection();                  
	$query=' SELECT NomBonus FROM possedebonus WHERE IDCompte="'.$id.'" ';
	$resultall = mysqli_query($link,$query);        
	$bonus = array();      
	while ($row = mysqli_fetch_array($resultall)) {             
         	$bonus[] = $row;         
	}
    mysqli_free_result( $resultall);                   
    close_database_connection($link); 
    return $bonus;     
}

function get_defense($id){         
	$link = open_database_connection();                         
	$question = array();
	$try = array();

	$n=1;

	while ( $n <= 10) {      
			$test='SELECT question FROM question Q, infocompte I WHERE IDCompte="'.$id.'" AND Q.IDQuestion = I.Q'.$n.''; 
			$result = mysqli_query($link,$test);  
			if( mysqli_num_rows( $result) ){
				$row = mysqli_fetch_assoc($result);
				$try[] = $row; 
			}    
			else{
         		$try[$n]["question"] = "VIDE";
         	}        
         	$n ++;
    }

	mysqli_free_result( $result);
                  
    close_database_connection($link); 
    return $try;     
}

function delete_question_defense($id,$num){         
	$link = open_database_connection();                  
	$query='UPDATE infocompte I SET I.Q'.$num.' = NULL WHERE IDCompte="'.$id.'" '; 
	$resultall = mysqli_query($link,$query);                       
    close_database_connection($link); 
}

function ADD_question_defense($id,$num,$IDQ){         
	$link = open_database_connection();                  
	$query='UPDATE infocompte I SET I.'.$num.'="'.$IDQ.'"  WHERE IDCompte="'.$id.'" ';
	$resultall = mysqli_query($link,$query);                       
    close_database_connection($link); 
}

function get_all_question_SUJET($id,$Sujet){         
	$link = open_database_connection();                  
	$query=' SELECT Q.IDQuestion,NomThème,NomSujet,Question,bonnerep,mauvaiserep1,mauvaiserep2,mauvaiserep3,NvQuestion FROM banquedequestion B,question Q WHERE IDCompte="'.$id.'" AND B.IDQuestion=Q.IDQuestion AND NomSujet="'.$Sujet.'"';
	$resultall = mysqli_query($link,$query);        
	$question = array();
	while ($row = mysqli_fetch_assoc($resultall)) {             
         	$question[] = $row;         
	}
    mysqli_free_result( $resultall);                   
    close_database_connection($link); 
    return $question;     
}   

function PossedeAmis($id){
	$amis = False ;
	$link = open_database_connection();
	$query= 'SELECT IDCompte2 FROM possèdeamis WHERE IDCompte =( SELECT IDCompte FROM infocompte WHERE IDCompte ="'.$id.'" )';
	$result = mysqli_query($link, $query );
	if( mysqli_num_rows( $result) )        
		$amis = True;
	
	mysqli_free_result( $result );    
	close_database_connection($link);
	return $amis;
}

function get_all_friends($id){
	$link = open_database_connection();                  
	$query=' SELECT PseudoCompte,PointsSolo,NomAvatar FROM infocompte I,possèdeavatar P WHERE I.IDCompte IN (SELECT IDCompte2 FROM possèdeamis WHERE IDCompte="'.$id.'") AND P.IDCompte=I.IDCompte';

	$resultall = mysqli_query($link,$query);        
	$question = array();
	while ($row = mysqli_fetch_array($resultall)) {             
         	$question[] = $row;         
	}
    mysqli_free_result( $resultall);                   
    close_database_connection($link); 
    return $question;
}
/*** A ajouter ***/
function get_avatar_from_theme($link, $nomTheme)
{
	$query = '
				SELECT NomAvatar
				FROM associéavatar
				WHERE NomThème = "'.$nomTheme.'"
			  ';
	$result = mysqli_query( $link, $query );
	return $result;
}

function get_theme_from_idcompte($link, $idcompte)
{
	$query = '
				SELECT associéavatar\.NomThème
				FROM possèdeavatar, associéavatar
				WHERE possèdeavatar\.NomAvatar = associéavatar\.NomAvatar
					  AND possèdeavatar\.IDCompte = "'.$idcompte.'"
			  ';
	$result = mysqli_query( $link, $query );
	return $result;
}

function add_avatar_to_account($link, $idcompte, $nomAvatar)
{
	$query = '
				INSERT INTO possèdeavatar (IDCompte, NomAvatar)
				VALUES ("'.$_SESSION['ID'].'", "'.$NomAvatar['NomAvatar'].'")
			  ';
	$ajoutTheme = mysqli_query( $link, $query );
}

function get_idcompte_from_pseudo($link, $pseudo)
{
	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE PseudoCompte = "'.$pseudo.'"
			 ';
	$result = mysqli_query( $link, $query );
	return $result;
}

function get_idcompte_from_ndc($link, $ndc)
{
	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE NDCCompte = "'.$ndc.'"
			 ';
	$result = mysqli_query( $link, $query );
	return $result;
}

function get_idcompte_from_email($link, $email)
{
	$query = '
				SELECT IDCompte 
				FROM infocompte 
				WHERE emailUtilisateur = "'.$email.'"
			 ';
	$result = mysqli_query( $link, $query );
	return $result;
}

function add_account($link, $ndc, $mdp, $pseudo, $prenom, $nom, $email, $age)
{
	$query = '
				INSERT INTO infocompte (NDCCompte, MDPCompte, PseudoCompte, PrenomUtilisateur, NomUtilisateur, 
				            emailUtilisateur, AgeUtilisateur)
				VALUES ("'.$ndc.'", "'.$mdp.'", "'.$pseudo.'", "'.$prenom.'", 
				        "'.$nom.'", "'.$email.'", "'.$age.'")
			 ';
	$result = mysqli_query( $link, $query );
}

function choose_succes($succes,$id){
	enlever_succes($id);
	$link = open_database_connection();
	$query = 'UPDATE adébloquessuccès  SET succèsactif = "'.$succes.'" WHERE IDCompte="'.$id.'" AND NomSuccès = "'.$succes.'"'; 
	mysqli_query( $link, $query );

}

function enlever_succes($id){
	$link = open_database_connection();
	$query = 'UPDATE adébloquessuccès SET succèsactif = NULL WHERE IDCompte="'.$id.'" ';
	mysqli_query( $link, $query );
}

function change_defense($id,$pos){
	$link = open_database_connection();
	$query = 'UPDATE banquedequestion SET Defense = defense,positiondefense="'.$pos.'" WHERE IDCompte="'.$id.'" ';
	mysqli_query( $link, $query );
}

function sujet_posseder_litterature( $id ) {
	$link = open_database_connection();                  
	$query='SELECT S.NomSujet FROM sujet S,adébloquésujet A WHERE A.nomsujet=S.nomsujet AND IDCompte="'.$id.'" AND NomThème="Littérature" ';
	$resultall = mysqli_query($link,$query);        
	$sujet = array();
	while ($row = mysqli_fetch_assoc($resultall)) {             
         	$sujet[] = $row;         
	}
    mysqli_free_result( $resultall);                   
    close_database_connection($link);
    return $sujet; 
}

function sujet_posseder_artiste( $id ) {
	$link = open_database_connection();                  
	$query='SELECT S.NomSujet FROM sujet S,adébloquésujet A WHERE A.nomsujet=S.nomsujet AND IDCompte="'.$id.'" AND NomThème="Artiste" ';
	$resultall = mysqli_query($link,$query);        
	$sujet = array();
	while ($row = mysqli_fetch_assoc($resultall)) {             
         	$sujet[] = $row;         
	}
    mysqli_free_result( $resultall);                   
    close_database_connection($link);
    return $sujet; 
}

function sujet_posseder_Scientifique( $id ) {
	$link = open_database_connection();                  
	$query='SELECT S.NomSujet FROM sujet S,adébloquésujet A WHERE A.nomsujet=S.nomsujet AND IDCompte="'.$id.'" AND NomThème="Scientifique" ';
	$resultall = mysqli_query($link,$query);        
	$sujet = array();
	while ($row = mysqli_fetch_assoc($resultall)) {             
         	$sujet[] = $row;         
	}
    mysqli_free_result( $resultall);                   
    close_database_connection($link);
    return $sujet; 
}

function get_pseudo_fromID( $id ) {
	$link = open_database_connection();                  
	$query='SELECT PseudoCompte FROM infocompte WHERE IDCompte="'.$id.'" ';
	$pseudo = mysqli_query($link,$query); 
	$res = mysqli_fetch_array($pseudo);
	$resu=$res['PseudoCompte'];
	close_database_connection($link);
	return $resu;       
}

function get_pointSolo_fromID( $id ) {
	$link = open_database_connection();                  
	$query='SELECT PointsSolo FROM infocompte WHERE IDCompte="'.$id.'" ';
	$PointsSolo = mysqli_query($link,$query); 
	$res = mysqli_fetch_array($PointsSolo);
	$resu=$res['PointsSolo'];
	close_database_connection($link);
	return $resu;       
}

function get_PartieJ_Att( $id ) {
	$link = open_database_connection();                  
	$query='SELECT PartiesJouéesAtt 
			FROM infocompte
			WHERE IDCompte="'.$id.'" ';
	$PointsSolo = mysqli_query($link,$query); 
	$res = mysqli_fetch_array($PointsSolo);
	$resu=$res['PartiesJouéesAtt'];
	close_database_connection($link);
	return $resu;       
}
function get_PartieP_Att( $id ) {
	$link = open_database_connection();                  
	$query='SELECT PartiesPerduesAtt 
			FROM infocompte
			WHERE IDCompte="'.$id.'" ';
	$PointsSolo = mysqli_query($link,$query); 
	$res = mysqli_fetch_array($PointsSolo);
	$resu=$res['PartiesPerduesAtt'];
	close_database_connection($link);
	return $resu;       
}

function get_PartieJ_Deff( $id ) {
	$link = open_database_connection();                  
	$query='SELECT PartiesJouéesDeff 
			FROM infocompte
			WHERE IDCompte="'.$id.'" ';
	$PointsSolo = mysqli_query($link,$query); 
	$res = mysqli_fetch_array($PointsSolo);
	$resu=$res['PartiesJouéesDeff'];
	close_database_connection($link);
	return $resu;       
}
function get_PartieP_Deff( $id ) {
	$link = open_database_connection();                  
	$query='SELECT PartiesPerduesDeff 
			FROM infocompte
			WHERE IDCompte="'.$id.'" ';
	$PointsSolo = mysqli_query($link,$query); 
	$res = mysqli_fetch_array($PointsSolo);
	$resu=$res['PartiesPerduesDeff'];
	close_database_connection($link);
	return $resu;       
}

/** Vendredi **/
/* <div id="Asujet1" class="q row-box col-md-12">
		<div class="col-md-12">
		<h1 class="SujetQ"><?php echo ?></h1>
			<div class="sub-content-box tmp"><?php echo ?></div>
				<div class="row-box">
					<div class="sub-content-box tmpG">
						<p><?php echo ?> </p>
					</div>
					<div class="sub-content-box tmpD">
						<p><?php echo ?> </p>
					</div>
				</div>
				<div class="row-box">
					<div class="sub-content-box tmpG">
						<p><?php echo ?> </p>
					</div>
					<div class="sub-content-box tmpD">
						<p><?php echo ?> </p>
					</div>
				</div>
			</div>
		</div>
	</div> 
  	<?php $question=get_all_question_Histoire(1);var_dump($question)?>
	<?php foreach( $question as $q ) : ?>          
		<div id="Asujet1" class="q row-box col-md-12">
		<div class="col-md-12">
		<h1 class="SujetQ"><?php echo ?></h1>
			<div class="sub-content-box tmp"><?php echo ?></div>
				<div class="row-box">
					<div class="sub-content-box tmpG">
						<p><?php echo ?> </p>
					</div>
					<div class="sub-content-box tmpD">
						<p><?php echo ?> </p>
					</div>
				</div>
				<div class="row-box">
					<div class="sub-content-box tmpG">
						<p><?php echo ?> </p>
					</div>
					<div class="sub-content-box tmpD">
						<p><?php echo ?> </p>
					</div>
				</div>
			</div>
		</div>
	</div>         
	<?php endforeach ?> */
?>
