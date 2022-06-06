<?php

namespace NTaoussi\Src\Model;

class Pokemon {
    private int $number;
    private string $name;
    private string $description;
    private float $size;
    private float $weight;
    private array $types;
    private string $picture;

    function __construct(int $number, string $name, string $description, float $size, float $weight, array $types, string $picture) {
        $this->number = $number;
        $this->name = $name;
        $this->description = $description;
        $this->size = $size;
        $this->weight = $weight;
        $this->types = $types;
        $this->picture = $picture;
    }

}

?>