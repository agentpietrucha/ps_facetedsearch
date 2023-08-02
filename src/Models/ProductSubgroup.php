<?php

class ProductSubgroup extends ObjectModel
{
    public $id_product_group;

    public $position;

    public $name;

    public static $definition = [
        'table' => 'product_subgroup',
        'primary' => 'id_product_subgroup',
        'multilang' => true,
        'fields' => [
            'id_product_group' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],
            'position' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],

            // Language fields
            'name' => ['type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isCleanHtml', 'size' => 128, 'required' => true],
        ],
    ];
}
