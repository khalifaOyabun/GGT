<?php
/* Smarty version 3.1.32, created on 2022-06-27 10:00:37
  from 'C:\wamp\www\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\GGT\inscription.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_62b97fc578f349_79922381',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '04e6d3a507d544215d704983190f68001820729b' => 
    array (
      0 => 'C:\\wamp\\www\\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\\GGT\\inscription.tpl',
      1 => 1656324035,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:./header.tpl' => 1,
    'file:./footer.tpl' => 1,
  ),
),false)) {
function content_62b97fc578f349_79922381 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:./header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <?php echo '<script'; ?>
 src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"><?php echo '</script'; ?>
>
</head>
<body>

<div class="container mt-3">
  <h2>Stacked form</h2>
  <form action="inscription.php" method="post">
    <div class="mb-3 mt-3">
      <label for="email">Email: </label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="mb-3">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    </div>
    <div class="mb-3">
      <label for="fname">Prénom:</label>
      <input class="form-control" type="text" name="fname" id="fname" placeholder="Prénom"> 
    </div>
    <div class="mb-3">
      <label for="lname">Nom:</label>
      <input class="form-control" type="text" name="lname" id="lname" placeholder="Nom"> 
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>


<?php $_smarty_tpl->_subTemplateRender("file:./footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
