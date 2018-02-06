<?php

session_start();

$request_url = trim($_SERVER['REQUEST_URI'],'/');
if ($request_url === 'logout') {
  session_destroy();
  header('Location: /');
  exit();
}

if (isset($_SESSION['logged'])) {
  if (empty($request_url)) {
    header('Location: setting');
    exit();
  }
  setcookie('last_visit', $request_url, time() + 3600);
}

if (!empty($request_url)) {
  $file = __DIR__ . DIRECTORY_SEPARATOR . 'pages' . DIRECTORY_SEPARATOR . $request_url . '.php';
  ob_start();
  if (file_exists($file)) {
    include_once $file;
  }
  else {
    include_once __DIR__ . DIRECTORY_SEPARATOR . 'pages' .
      DIRECTORY_SEPARATOR . 'inc' . DIRECTORY_SEPARATOR . '404.php';
  }
  $page_content = ob_get_clean();
}elseif (!isset($_SESSION['logged'])) {
  header('Location: login');
}
?>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <?php if( isset($_SESSION['logged'])): ?>
    <link rel="stylesheet" href="css/<?= isset($_COOKIE['style']) ? $_COOKIE['style'] : 'light.css' ?>">
  <?php endif; ?>
  <title>Document</title>
</head>
<body>


  <?php
  if (isset($_SESSION['logged'])) {
    include __DIR__ . DIRECTORY_SEPARATOR . 'pages' . DIRECTORY_SEPARATOR . 'inc'
      . DIRECTORY_SEPARATOR . 'menu.php';
  }
  ?>
  <?= $page_content ?>
</body>
</html>
