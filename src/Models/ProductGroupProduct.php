<?php

class ProductGroupProduct extends ObjectModel
{
    public $id_product_group;

    public $id_product;

    public static $definition = [
        'table' => 'product_group_product',
        'primary' => 'id_product_group_product',
        'fields' => [
          'id_product_group' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],
          'id_product' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true]
        ],
    ];
}
