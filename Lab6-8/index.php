<?php

declare(strict_types = 1);
session_start();

use PTS\Core\Config;
use PTS\Core\DB;
use PTS\Core\Route;

require_once 'autoload.php';

Config::set('config.php');
DB::setConfig(Config::get('db'));

Config::loadConfigFromDB(DB::getObject());

Route::run()->processRequest()->processResponse();
