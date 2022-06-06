<?php

class Database {

    public static $instance = null;

    public static function getPDO() {
        self::$instance = new PDO ('mysql:host=localhost;dbname=pokedex', 'root', '', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }
}

?>