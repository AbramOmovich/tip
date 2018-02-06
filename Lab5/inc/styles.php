<?php

return array_filter(
  scandir( __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'css'),
  function ($file) {
    return strpos($file, '.') !== 0;
  }
);

