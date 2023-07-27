<?php

class FilterGroup extends ObjectModel
{
    const TYPES = [
        [
            'id' => 'text',
            'name' => 'Text',
        ],
        [
            'id' => 'color',
            'name' => 'Color',
        ]
    ];

    public $type;

    public $name;

    public static $definition = [
        'table' => 'filter_group',
        'primary' => 'id_filter_group',
        'multilang' => true,
        'fields' => [
            'type' => ['type' => self::TYPE_STRING, 'required' => true],

            // Language fields
            'name' => ['type' => self::TYPE_STRING, 'lang' => true, 'validate' => 'isCleanHtml', 'size' => 255, 'required' => true],
        ]
    ];
}
