<?php

	if (empty($_GET['page'])) {
		require "view/include/home.php";
	} 

	else {
		switch ($_GET['page']) {

			case "accueil": require "view/include/home.php";
				break;

			case "pokedex": require "view/include/pokedex.php";
				break;

			case "ajouter": require "view/include/form.php";
				break;

		}
	}

?>