<?php

class FilterValue extends ObjectModel
{
    public $id_filter_subgroup;

    public $id_attribute;

    public $id_attribute_group;

    public static $definition = [
        'table' => 'filter_value',
        'primary' => 'id_filter_value',
        'multilang' => false,
        'fields' => [
            'id_filter_subgroup' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],
            'id_attribute' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],
            'id_attribute_group' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => false],
        ]
    ];
}
