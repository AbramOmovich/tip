<?php
$label = '';
if (isset($_POST['number']) && !empty($_POST['number'])) {
    foreach ($_POST['number'] as $index => $item) {
        if (!is_numeric($item)) {
            unset($_POST['number']);
            break;
        }
    }
}

if (isset($_POST['number']) && isset($_POST['op'])) {
    switch ($_POST['op']) {
        case 'sum' : {
            $label = '+';
            $result = array_sum($_POST['number']);
            break;
        }
        case 'sub' : {
            $label = '-';
            $result = $_POST['number'][0] - $_POST['number'][1];
            break;
        }
        case 'div' : {
            $label = '/';
            if ($_POST['number'][1] != 0) {
                $result = $_POST['number'][0] / $_POST['number'][1];
            } else {
                echo 'Division by zero';
            }
            break;
        }
        case 'mul' : {
            $label = '*';
            $result = $_POST['number'][0] * $_POST['number'][1];
            break;
        }
    }
}

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<!--
<form method="post">
    <input type="text" name="number[0]" value="<?= isset($_POST['number'][0]) ? $_POST['number'][0] : '' ?>">
    <select name="op" id="">
        <option value="sum">+</option>
        <option value="sub">-</option>
        <option value="mul">*</option>
        <option value="div">/</option>
    </select>
    <input type="text" name="number[1]" value="<?= isset($_POST['number'][1]) ? $_POST['number'][1] : '' ?>">
    <button type="submit">=</button>
</form>
-->
<form action="" method="post" id="calc-form">
    <input type="text" name="number[0]" value="<?= isset($_POST['number'][0]) ? $_POST['number'][0] : '' ?>">
    <label for="op" id="op-label"><?= $label ?></label>
    <input type="hidden" name="op" id="op" value="<?= isset($_POST['op']) ? $_POST['op'] : '' ?>">
    <input type="text" name="number[1]" value="<?= isset($_POST['number'][1]) ? $_POST['number'][1] : '' ?>">
    <button type="submit">=</button>
    <?php if (isset($result)): ?>
        <span><?= $result ?></span>
    <?php endif; ?>
</form>
<script>
    window.onkeydown = function (e) {
        var code = e.keyCode ? e.keyCode : e.which;
        if (code === 13) {
            submitForm();
        }
        var deteted = false;
        switch (code) {
            case 106 : {
                setLabel('*');
                setOperation('mul');
                deteted = true;
                break;
            }
            case 111 : {
                setLabel('/');
                setOperation('div');
                deteted = true;
                break;
            }
            case 107 : {}
            case 187 : {
                setLabel('+');
                setOperation('sum');
                deteted = true;
                break;
            }
            case 109 : {}
            case 189 : {
                setLabel('-');
                setOperation('sub');
                deteted = true;
                break;
            }
        }
    };

    function setLabel(text) {
        document.getElementById('op-label').innerHTML = text;
    }
    function setOperation(text) {
        document.getElementById('op').setAttribute('value', text);
    }
    function submitForm() {
        document.getElementById('calc-form').submit();
    }
</script>
</body>
</html>
