<?php 

		require('header.php');
		require('model/pokemon_Class.php');

		$user = 'root';
		$pass = '';

		try {
			$db = new PDO ('mysql:host=localhost;dbname=pokedex', $user, $pass);

		} catch (PDOException $e) {
			print "Erreur : " . $e->getMessage() . "<br/>";
			die;
		}
?>

	<div id="Ajout">
			
		<div id="formPokedex">

			<h3 id="titleForm">Ajout d'un Pokémon au Pokedex</h3>
			<p id="advice">* Pour sélectionner plusieurs options maintiendre "CTRL" tout en cliquant sur les options choisies.</p>

		
			<form id="formulairePokedex" action="model/form_Pokedex.php" method="post">

					<label for="number">Numero du Pokemon</label><br>
					<input name="number" type="number" placeholder="Numero du Pokemon" required="">
					<br>

					<label for="name">Nom du Pokemon</label><br>
					<input name="name" type="text" placeholder="Nom du Pokemon" required="">
					<br>

					
					<label for="type">Type du Pokemon</label><br>
						<select name="type[]" multiple size="18" >
							<option value="Feu">FEU</option>
							<option value="Eau">EAU</option>
							<option value="Plante">PLANTE</option>
							<option value="Normal">NORMAL</option>
							<option value="Vol">VOL</option>
							<option value="Electrique">ELECTRIQUE</option>
							<option value="Glace">GLACE</option>
							<option value="Psy">PSY</option>
							<option value="Insecte">INSECTE</option>
							<option value="Roche">ROCHE</option>
							<option value="Sol">SOL</option>
							<option value="Acier">ACIER</option>
							<option value="Combat">COMBAT</option>
							<option value="Dragon">DRAGON</option>
							<option value="Tenebre">TENEBRE</option>
							<option value="Poison">POISON</option>
							<option value="Fée">FÉE</option>
							<option value="Spectre">SPECTRE</option>
				      	</select>
					<br>
					

					<label for="information">Descriptions du Pokemon</label><br>
					<input name="information" type="text" placeholder="Information lié au Pokemon" required="">
					<br>

					<label for="weaknesses">Faiblesses du Pokemon faces aux autres types</label><br>
						<select name="weaknesses[]" multiple size="18">
							<option value="Feu">FEU</option>
							<option value="Eau">EAU</option>
							<option value="Plante">PLANTE</option>
							<option value="Normal">NORMAL</option>
							<option value="Vol">VOL</option>
							<option value="Electrique">ELECTRIQUE</option>
							<option value="Glace">GLACE</option>
							<option value="Psy">PSY</option>
							<option value="Insecte">INSECTE</option>
							<option value="Roche">ROCHE</option>
							<option value="Sol">SOL</option>
							<option value="Acier">ACIER</option>
							<option value="Combat">COMBAT</option>
							<option value="Dragon">DRAGON</option>
							<option value="Tenebre">TENEBRE</option>
							<option value="Poison">POISON</option>
							<option value="Fee">FÉE</option>
							<option value="Spectre">SPECTRE</option>
				      	</select>
					<br>

					<label for="superiority">Supériorité du Pokemon faces aux autres types</label><br>
						<select name="superiority[]" multiple size="18">
							<option value="Feu">FEU</option>
							<option value="Eau">EAU</option>
							<option value="Plante">PLANTE</option>
							<option value="Normal">NORMAL</option>
							<option value="Vol">VOL</option>
							<option value="Electrique">ELECTRIQUE</option>
							<option value="Glace">GLACE</option>
							<option value="Psy">PSY</option>
							<option value="Insecte">INSECTE</option>
							<option value="Roche">ROCHE</option>
							<option value="Sol">SOL</option>
							<option value="Acier">ACIER</option>
							<option value="Combat">COMBAT</option>
							<option value="Dragon">DRAGON</option>
							<option value="Tenebre">TENEBRE</option>
							<option value="Poison">POISON</option>
							<option value="Fée">FÉE</option>
							<option value="Spectre">SPECTRE</option>
				      	</select>
					<br>

					<label for="resistance">Résistance du Pokemon faces aux autres types</label><br>
						<select name="resistance[]" multiple size="18">
							<option value="Feu">FEU</option>
							<option value="Eau">EAU</option>
							<option value="Plante">PLANTE</option>
							<option value="Normal">NORMAL</option>
							<option value="Vol">VOL</option>
							<option value="Electrique">ELECTRIQUE</option>
							<option value="Glace">GLACE</option>
							<option value="Psy">PSY</option>
							<option value="Insecte">INSECTE</option>
							<option value="Roche">ROCHE</option>
							<option value="Sol">SOL</option>
							<option value="Acier">ACIER</option>
							<option value="Combat">COMBAT</option>
							<option value="Dragon">DRAGON</option>
							<option value="Tenebre">TENEBRE</option>
							<option value="Poison">POISON</option>
							<option value="Fée">FÉE</option>
							<option value="Spectre">SPECTRE</option>
				      	</select>
					<br>

					<label for="imagePokemon">Image du Pokemon</label><br>
					<input type="hidden" name="MAX_FILE_SIZE" value="0.003" />
					<input type="file" name="imagePokemon">

					<input class="submit" type="submit" name="submit">
				

			</form>

		</div>
	</div>

<?php require('footer.php') ?>