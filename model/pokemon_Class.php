<?php  

	class Pokemon 
	{

		private $numberPokemon;
		private $name;
		private $type;
		private $information;
		private $superiority;
		private $resistance;
		private $weaknesses;
		private $image;

		/* Constructeur*/
		public function __construct($name, $number, $type, $information, $superiority, $resistance, $weaknesses, $image) {

			$this->setNumber($number);
			$this->name = $name;
			$this->type = $type;
			$this->information = $information;
			$this->superiority = $superiority;
			$this->resistance = $resistance;
			$this->weaknesses = $weaknesses;
			$this->image = $image;
		}


		/* ---------- GETTER & SETTER ---------- */


// --- Getter & Setter "NAME" --- //

		// Getter "Name"
		public function getName($name) {
			return $this->name;
		}

		// Setter "Name"
		public function setName($name) {
			$this->name = $name;
		}

// --- Getter & Setter "NUMBER" --- //

		// Getter "Number"
		public function getNumber($number) {
			return $this->numberPokemon;
		}

		// Setter "Number"
		public function setNumber($number) {
			if (is_int($number)) {
				$this->numberPokemon = $number;
			}
			else {
				throw new Exception("Le numéro du Pokemon doit être un entier");			
			}
		}

// --- Getter & Setter "TYPE" --- //

		// Getter "Type"
		public function getType($type) {
			return $this->type;
		}

		// Setter "Type"
		public function setType($type) {
			$this->type = $type;
		}

// --- Getter & Setter "INFORMATION" --- //

		// Getter "Information"
		public function getInformation($information) {
			return $this->information;
		}

		// Setter "Information"
		public function setInformation($information) {
			$this->information = $information;
		}

// --- Getter & Setter "SUPERIORITY" --- //

		// Getter "Superiority"
		public function getSuperiority($superiority) {
			return $this->superiority;
		}

		// Setter "Superiority"
		public function setSuperiority($superiority) {
			$this->superiority = $superiority;
		}

// --- Getter & Setter "RESISTANCE" --- //

		// Getter "Resistance"
		public function getResistance($resistance) {
			return $this->resistance;
		}

		// Setter "Resistance"
		public function setResistance($resistance) {
			$this->resistance = $resistance;
		}

// --- Getter & Setter "WEAKNESSES" --- //

		// Getter "Weaknesses"
		public function getWeaknesses($weaknesses) {
			return $this->weaknesses;
		}

		// Setter "Weaknesses"
		public function setWeaknesses($weaknesses) {
			$this->weaknesses = $weaknesses;
		}

// --- Getter & Setter "IMAGE" --- //

		// Getter "Image"
		public function getImage($image) {
			return $this->image;
		}

		// Setter "Image"
		public function setImage($image) {
			$this->image = $image;
		}


/* ----- "FONCTION POUR AFFICHER LE POKEMON" ----- */
		public function afficherPokemon() {

			// NUMERO DU POKEMON
			echo "<b>Numero du Pokemon : </b>" . $this->numberPokemon . "<br>";

			// NOM DU POKEMON
			echo "<b>Nom du Pokemon : </b>" . $this->name . "<br>";

			// TYPE DU POKEMON
			echo "<b>Type du Pokemon : </b>";
			foreach ($this->type as $t) { echo $t . "\n";};
			echo "<br>";

			// DESCRIPTION DU POKEMON
			echo "<b>Description du Pokemon : </b>" . $this->information . "<br>";

			//FAIBLESSES DU POKEMON
			echo "<b>Faiblesses du Pokemon : </b>";
			foreach ($this->weaknesses as $w) { echo $w . "\n";};
			echo "<br>";

			// AVANTAGE DU POKEMON SUR LES AUTRES TYPES
			echo "<b>Avantage du Pokemon sur les autres types : </b>";
			foreach ($this->superiority as $s) { echo $s . "\n";};
			echo "<br>";

			// RESISTANCE DU POKEMON AUX AUTRES TYPES
			echo "<b>Resitance du Pokemon aux autres types : </b>";
			foreach ($this->resistance as $r) { echo $r . "\n";};
			echo "<br>";

			// IMAGE DU POKEMON
			echo "<b>Image du Pokemon : </b>" . $this->image . "<br>";
		}


/* ----- "FONCTION INSERTION BDD" ----- */
// Sert a inséré en base de donnée un pokemon depuis le formulaire

		public function insertionBDD() 
		{
			require('bdd_Connect.php');

			$stmt = $db->prepare('INSERT INTO pokemon(numberPokemon, name, type, info, weaknesses, superiority, resistance, image) VALUES(:numberPokemon, :name, :type, :info, :weaknesses, :superiority, :resistance, :image)');

			$stmt->execute(array(
				':numberPokemon' => $this->numberPokemon,
				':name' => $this->name,
				':type' => serialize($this->type),
				':info' => $this->information,
				':weaknesses' => serialize($this->weaknesses),
				':superiority' => serialize($this->superiority),
				':resistance' => serialize($this->resistance),
				':image' => $this->image
			    ));

		}



/* ----- "FONCTION SELECTION BDD" ----- */
// Sert à selectionné les pokemon dans la database

		public function selectionBDD($pokemon) 
		{
			require('bdd_Connect.php');

			$req = "SELECT * FROM pokemon";
			$slct = $pdo->prepare($req);
			$slct->execute();
			$pokemon = $slct->fetchAll(PDO::FETCH_ASSOC);
			return $pokemon;
		}


	}

?>
