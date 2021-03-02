<?php  
		require('bdd_Connect.php');
		require('pokemon_Class.php');


	if (isset($_POST['number'], $_POST['name']));
	{

		$number = intval($_POST['number']);
		$name = $_POST['name'];
		$type = $_POST['type'];
		$information = $_POST['information'];
		$weaknesses = $_POST['weaknesses'];
		$superiority = $_POST['superiority'];
		$resistance = $_POST['resistance'];
		$image = $_POST['imagePokemon'];



		$newPokemon = new Pokemon($name, $number, $type, $information, $superiority, $resistance, $weaknesses, $image);
		$newPokemon->insertionBDD();
		header('Location: ../index.php');
	}


?>