<?php
/* Smarty version 3.1.32, created on 2022-06-22 18:55:07
  from 'C:\wamp\www\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\GGT\connect.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_62b3658b5e1e62_67734420',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '87bcbd9bb15cdf1352e5eaa3942d611fa554009b' => 
    array (
      0 => 'C:\\wamp\\www\\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\\GGT\\connect.tpl',
      1 => 1655915215,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:./header.tpl' => 1,
    'file:./footer.tpl' => 1,
  ),
),false)) {
function content_62b3658b5e1e62_67734420 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:./header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<div class="container mt-5">
  <?php if ($_smarty_tpl->tpl_vars['var']->value['submitted'] == true) {?>
    <?php if ($_smarty_tpl->tpl_vars['var']->value['state'] == true) {?>
      <div class="alert alert-success" id="success">
        <strong class="alerte">Genial !</strong> La connexion a réussi !
      </div>
    <?php } else { ?>
                <div class="alert alert-danger" id="echec">
          <strong class="alerte">Erreur !</strong> La connexion a échoué !
        </div>
    <?php }?>
  <?php }?>
  <h2>Connectez-vous</h2>
  <form method="post">
    <div class="mb-3 mt-3">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" autocomplete="username">
    </div>
    <div class="mb-3">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd" autocomplete="current-password">
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary submit" >Submit</button>
  </form>
</div>
<?php $_smarty_tpl->_subTemplateRender("file:./footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
