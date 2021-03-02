<?php

require('bdd_Connect.php');

			$req = "SELECT * FROM pokemon";
			$slct = $db->prepare($req);
			$slct->execute();
			$pokemon = $slct->fetchAll(PDO::FETCH_ASSOC);

?>