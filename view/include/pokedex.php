<?php 
	require'header.php'; 
	require'model/model_Pokemon.php';

?>

	<div id="blocPokedex">
		<?php	foreach ($pokemon as $p) :	?>
		<a href="">
			<div class="pokemonCard">
				
				<div class="pokemonImg">
					<img class="imagePokemon" src="view/img/pokemon/sprite_img/<?= $p['image'] ?>">
				</div>

				<div class="info">

					<div class="mainInfo">
							<p class="numberPokemon"><?= " N° " . $p['numberPokemon'] . " - " ?></p>
							<h4 class="namePokemon"><?= $p['name'] ?></h4>
					</div>

					<div class="secondInfo">
							<p class="typePokemon">Type(s) : 
								<?php $types = unserialize($p['type']);
									foreach ($types as $key => $value) {
							 			echo $value . " ";
							 		} ?>
							 </p>
					</div>

				</div>

			</div>
		</a>
		<?php endforeach; ?>
	</div>

<?php require'footer.php'; ?>