<?php

namespace PTS\Core;

class Config
{

    private const CONFIG_FILE_NOT_FOUND = 'Config file not found!';
    private const DB_SETTINGS_NOT_EXIST = 'Database settings not exist';

    private static $config;

    public static function set(string $config_file) : void {
        if (file_exists($config_file)){
            self::$config = require_once $config_file;

        }
        else throw new \Exception(self::CONFIG_FILE_NOT_FOUND,-1);
    }

    public static function loadConfigFromDB(DB $db) : void {
        $db_config = $db->select('config')->get();

        if ($db_config !== []){
            foreach ($db_config as $row){
                self::$config [ $row['c_name'] ]= $row['c_value'] ;
            }
        }
        else throw new \Exception(self::DB_SETTINGS_NOT_EXIST,-3);
    }


    public static function get($key){
        return self::$config[$key];
    }

}