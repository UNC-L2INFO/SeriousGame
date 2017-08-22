<?php       
function open_database_connection(){         
	$link = mysqli_connect('localhost', 'root', '', 'quizz');         
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
		
	mysqli_free_result( $result );         
	close_database_connection($link); 

	return $isuser;     
}

function PossedeSucces( $pseudo ){

} 

?>