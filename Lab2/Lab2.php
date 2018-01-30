<?php

/**
 * 1. Объявите две целочисленные переменные $a и $b и задайте им произвольные
начальные значения. Затем напишите скрипт, который работает по следующему
принципу:
a. если $a и $b положительные, выведите их разность;
b. если $а и $b отрицательные, выведите их произведение;
c. если $а и $b разных знаков, выведите их сумму.
Ноль можно считать положительным числом.
2. Присвойте переменной $а значение в промежутке [0..15]. С помощью оператора
switch организуйте вывод чисел от $a до 15;
3. Реализуйте основные 4 арифметические операции (+, -, *, %) в виде функций с
двумя параметрами. Обязательно используйте оператор return.
4. Реализуйте функцию с тремя параметрами: function mathOperation($arg1, $arg2,
$operation), где $arg1, $arg2 – значения аргументов, $operation – строка с названием
операции. В зависимости от переданного значения операции выполните одну из
арифметических операций (используйте функции из пункта 4) и верните
полученное значение (используйте switch).
5. С помощью рекурсии организуйте функцию возведения числа в степень. Формат:
function power($val, $pow), где $val – заданное число, $pow – степень.
6. Напишите функцию, которая вычисляет текущее время и возвращает его в формате
с правильными склонениями, например:
22 часа 15 минут
21 час 43 минуты
итд.
Подсказка: часы и минуты можно узнать с помощью встроенной функции PHP –
date.
 */

$a = rand(-50, 50);
$b = rand(-50, 50);

if ($a >= 0 && $b >= 0) {
    echo "a - b = $a - $b = " . ($a - $b);
} elseif ($a < 0 && $b < 0) {
    echo "a * b = $a * $b = " . ($a * $b);
} else {
    echo "a + b = $a + $b = " . ($a + $b);
}

echo '<hr>';

function a($a) { echo $a , ' | '; }
echo 'a = ' . ($a = rand(0, 15)) . '<br>';
switch ($a) {
    case 0 : {a($a++);}
    case 1 : {a($a++); }
    case 2 : {a($a++); }
    case 3 : {a($a++); }
    case 4 : {a($a++); }
    case 5 : {a($a++); }
    case 6 : {a($a++); }
    case 7 : {a($a++); }
    case 8 : {a($a++); }
    case 9 : {a($a++); }
    case 10 : {a($a++); }
    case 11 : {a($a++); }
    case 12 : {a($a++); }
    case 13 : {a($a++); }
    case 14 : {a($a++); }
    case 15 : {a($a++); }
}

echo '<hr>';

function sum($a, $b) { return $a + $b; }
function sub($a, $b) { return $a - $b; }
function mul($a, $b) { return $a * $b; }
function mod($a, $b) { return $a % $b; }
function mathOperation($arg1, $arg2, $operation) {
    if (is_numeric($arg1) && is_numeric($arg2)) {
        switch ($operation) {
            case 'sum' :
            case 'sub' :
            case 'mul' :
            case 'mod' : {
                return $operation($arg1, $arg2);
            }
            default : {
                throw new Exception("Operation is undefined");
            }
        }
    }else {
        throw new InvalidArgumentException();
    }
}

function power($val, $pow) {
    if ($pow == 0) {
        return 1;
    }
    return $val * power($val, --$pow);
}

echo power(2,5), '<br>';

function getCurrentTime () {
    date_default_timezone_set('UTC');

    $exceptionals = array(11, 12, 13, 14);

    $hours = date('H');
    $minutes = date('i');

    $mod_hours = in_array($hours, $exceptionals) ? 0 : $hours % 10;
    $mod_minutes = in_array($minutes, $exceptionals) ? 0 : $minutes % 10;

    $hours_str = 'час';
    if ($mod_hours > 4 || $mod_hours == 0) {
        $hours_str .= 'ов';
    } else {
        $hours_str .= 'а';
    }

    $minutes_str = 'минут';
    if ($mod_minutes == 1) {
        $minutes_str .= 'а';
    } elseif ($mod_minutes > 1 && $mod_minutes < 5){
        $hours_str .= 'ы';
    }

    return "$hours $hours_str $minutes $minutes_str";
}

echo getCurrentTime();