<?php

require ('/wamp/www/STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL/GGT/smarty/libs/Smarty.class.php');
$smarty = new Smarty();




















$smarty->assign('var', $var);
$smarty->display('./home.tpl');