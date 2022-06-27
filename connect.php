<?php
session_start();
require('C:/wamp/www/STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL/GGT/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$post = filter_input_array(INPUT_POST);
$state = false;

if ($post != null) {
    extract($post);
    $servername = 'localhost';
    $dbname = 'projet';
    $username = 'root';
    $password = '';
    
    try {
        $connect = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    } catch (Exception $e) {
        die( "Problème de connection" . $e->getMessage());
    }

    $fetch_all_users = "SELECT * FROM users";
    $data = $connect->query($fetch_all_users);
    $users = $data->fetch();

    if ($users) {
        if (($users['email'] == $email) && ($users['pswd'] == md5($pswd))) {
            $state = true;
            $_SESSION['fname'] = $users['first_name'];
            $id = $users['id'];
            $_SESSION['photo'] = $users['photo'];
        }
    }
}       

$var = [
    'state' => $state,
    'submitted' => $post,
    'email' => '',
];

$smarty->assign('var', $var);
$smarty->display('./connect.tpl');