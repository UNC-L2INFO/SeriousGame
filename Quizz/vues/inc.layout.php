<!doctype html>
<html lang="fr">

	<head>
		<title><?php echo $title; ?></title> 
		<meta name="Description" content=<?php echo '"$desc"'; ?>/>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="Stylesheet" href="CSS/bootstrap.min.css" type="text/css">
		<script src="js/jquery-1.11.2.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		<link rel="Stylesheet" href="CSS/polices.css" type="text/css">
		<link rel="Stylesheet" href="CSS/styles.css" type="text/css">
	</head>

	<body>
		<?php 
			if (isset($menu) AND isset($flexStart))
			{
				echo
					$menu.
					$flexStart.
						$content.
					$flexEnd;
			}
			elseif (isset($menu) AND !isset($flexStart)) 
			{
				echo
					$menu.
					$content;
			}
			else
			{
				echo $content;
			}
		?>
	</body>
</html>