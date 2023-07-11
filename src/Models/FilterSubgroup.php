<?php

class FilterSubgroup extends ObjectModel
{
    public $id_filter_group;

    public $position;

    public $name;

    public static $definition = [
        'table' => 'filter_subgroup',
        'primary' => 'id_filter_subgroup',
        'multilang' => true,
        'fields' => [
            'id_filter_group' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],
            'position' => ['type' => self::TYPE_INT, 'validate' => 'isunsignedInt', 'required' => true],

            // Language fields
            'name' => ['type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isCleanHtml', 'size' => 128, 'required' => true],
        ],
    ];
}
