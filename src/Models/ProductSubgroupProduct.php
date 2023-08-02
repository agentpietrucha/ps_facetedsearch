<?php

class ProductSubgroupProduct extends ObjectModel
{
    public $id_product_subgroup;

    public $id_product;

    public static $definition = [
        'table' => 'product_subgroup_product',
        'primary' => 'id_product_subgroup_product',
        'fields' => [
          'id_product_subgroup' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],
          'id_product' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true]
        ],
    ];
}
