<?php  

function open_database_connection(){         

	$link = mysqli_connect('localhost', 'root', '', 'quizz');  
	mysqli_set_charset($link,'utf8');    
	return $link;     
} 

function close_database_connection($link){         

	mysqli_close($link);     
}   

function is_user( $login, $password ){

	$isuser = False ;            
	$link = open_database_connection();                  
	$query= 'SELECT LogginCompte FROM InfoCompte WHERE LogginCompte="'.$login.'" and MDPCompte="'.$password.'"';         
	$result = mysqli_query($link, $query );

	if( mysqli_num_rows( $result) )             
		$isuser = True; 
	
	echo $query ;
	printf("Select a retourné %d lignes.", $result->num_rows);
	mysqli_free_result( $result );         
	close_database_connection($link); 

	return $isuser;     
}

function login_idcompte( $login){
	$link = open_database_connection();
	$query= 'SELECT IDCompte FROM infocompte WHERE LogginCompte ="'.$login.'" )';
	echo $query;
	$idcompte= mysqli_query($link, $query ); 

	echo mysqli_query($link, $query );
	echo 'idcompte=';
	echo $idcompte;
	close_database_connection($link);
	return $idcompte;
}

function PossedeSucces( $login ){

	$succes = False ;
	$link = open_database_connection();
	$query= 'SELECT NomSuccès FROM adébloquessuccès WHERE IDCompte =( SELECT IDCompte FROM infocompte WHERE LogginCompte ="'.$login.'" )';
	$result = mysqli_query($link, $query );


	if( mysqli_num_rows( $result) )        
		$succes = True;
	
	echo $query ;
	printf("Select a retourné %d lignes.", $result->num_rows);
	mysqli_free_result( $result );    
	close_database_connection($link);

	return $succes;
}

function get_all_succes($id){         

	$link = open_database_connection();                  
	$query=' SELECT NomSuccès FROM adébloquessuccès WHERE IDCompte=1';
	$resultall = mysqli_query($link,$query);        
	$succes = array();      

	while ($row = mysqli_fetch_array($resultall)) {             
         	$succes[] = $row;         
	}

    mysqli_free_result( $resultall);                   
    close_database_connection($link); 

    return $succes;     
} 

function get_all_bonus($id){         

	$link = open_database_connection();                  
	$query=' SELECT NomBonus FROM possedebonus WHERE IDCompte=1';
	$resultall = mysqli_query($link,$query);        
	$bonus = array();      

	while ($row = mysqli_fetch_array($resultall)) {             
         	$bonus[] = $row;         
	}

    mysqli_free_result( $resultall);                   
    close_database_connection($link); 

    return $bonus;     
}

function get_all_question($id){         

	$link = open_database_connection();                  
	$query=' SELECT Question FROM possedebonus WHERE IDCompte=1';
	echo $query;
	$resultall = mysqli_query($link,$query);        
	 printf("Select a retourné %d lignes.", $resultall->num_rows);
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

?>