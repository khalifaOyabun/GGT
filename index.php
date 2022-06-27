<?php

// put full path to Smarty.class.php
require('C:/wamp/www/STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL/GGT/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$smarty->assign('name', 'Khalifa');
$smarty->display('index.tpl');

?>