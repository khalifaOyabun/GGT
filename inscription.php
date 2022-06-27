<?php
require('C:/wamp/www/STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL/GGT/smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$post = filter_input_array(INPUT_POST);

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

    $create_user = 'INSERT INTO users (email, pswd, first_name, last_name) VALUES (:email, :pswd, :fname, :lname)';
    $add_user = $connect->prepare($create_user);
    $add_user->execute([
        'email'=> $email,
        'pswd'=> hash('md5', $pswd),
        'fname'=> $fname,
        'lname'=> $lname
        ]) ;

    $add_user->errorInfo(); 
    exit();
}
// $var = array(
//     'email'=> $email,
//     'pswd'=> $pswd,
//     'first_name'=> $fname,
//     'last_name'=> $lname
// );
    
    // $smarty->assign('var', $var);
    $smarty->display('./inscription.tpl');