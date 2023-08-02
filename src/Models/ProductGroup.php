<?php

class ProductGroup extends ObjectModel
{
    public $name;

    public static $definition = [
        'table' => 'product_group',
        'primary' => 'id_product_group',
        'multilang' => true,
        'fields' => [
            'name' => ['type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isCleanHtml', 'size' => 128, 'required' => true],
        ]
    ];
}
