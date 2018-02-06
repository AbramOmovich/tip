<?php

if (isset($_SESSION['logged'])) {
    header('Location: /');
}

if ($_SERVER['REQUEST_METHOD'] === 'POST'
  && isset($_POST['login'])
  && isset($_POST['pass'])) {

    $user_file = __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'inc' .
      DIRECTORY_SEPARATOR . 'users.php';
    if (file_exists($user_file)) {
        $users = include $user_file;
        if ($users) {
            foreach ($users as $login => $pass) {
              if (strcasecmp($_POST['login'], $login) === 0 && $pass === $_POST['pass']){
                  $_SESSION['logged'] = TRUE;

                  $destination = 'settings';
                  if (isset($_COOKIE['last_visit'])) {
                      $destination = $_COOKIE['last_visit'];
                  }
                  header('Location: ' . $destination);
              }
            }
        }
    }
}

?>
<form method="post" action="<?= $_SERVER['REQUEST_URI'] ?>">
    <table>
        <tr>
            <td><label for="login">Login</label></td>
            <td><input type="text" id="login" name="login"></td>
        </tr>
        <tr>
            <td><label for="pass">Password</label></td>
            <td><input type="password" id="pass" name="pass"></td>
        </tr>
        <tr>
            <td><button type="submit">Log in</button></td>
            <td></td>
        </tr>
    </table>
</form>
