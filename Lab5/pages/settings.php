<?php

  if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['style'])) {
    $saved_style = $_POST['style'];
    setcookie('style', $saved_style, time() + 8600000);
  }

  $styles = include_once __DIR__ . DIRECTORY_SEPARATOR . '..'
    . DIRECTORY_SEPARATOR . 'inc' . DIRECTORY_SEPARATOR . 'styles.php';

  if (!isset($saved_style)){
    $saved_style = isset($_COOKIE['style']) ? $_COOKIE['style'] : '';
  }
?>
<form action="<?= $_SERVER['REQUEST_URI'] ?>" method="post">
  <label for="style">Select stylesheet</label>
  <select name="style" id="style">
    <?php foreach ($styles as $stylesheet): ?>
      <option value="<?= $stylesheet ?>" <?= $saved_style === $stylesheet ? 'selected' : '' ?>
      ><?= ucfirst(pathinfo($stylesheet, PATHINFO_FILENAME)) ?></option>
    <?php endforeach; ?>
  </select><br>
  <button type="submit">Save</button>
</form>
