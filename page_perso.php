<?php
session_start();

// put full path to Smarty.class.php
require('C:/wamp/www/STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL/GGT/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

// echo $_SESSION['fname'];

$fname = $_SESSION['fname'];
$photo = $_SESSION['photo'];

$var = [
    'fname' => $fname,
    'photo' => $photo
];

// session_destroy();
$smarty->assign('var', $var);
$smarty->display('./page_perso.tpl');
