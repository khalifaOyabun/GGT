<?php
/* Smarty version 3.1.32, created on 2022-06-22 16:57:04
  from 'C:\wamp\www\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\GGT\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_62b349e0418d78_26891187',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1c9a3a257bf13d03a7c58a30f55bf020e8922ded' => 
    array (
      0 => 'C:\\wamp\\www\\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\\GGT\\index.tpl',
      1 => 1655915915,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:./header.tpl' => 1,
    'file:./footer.tpl' => 1,
  ),
),false)) {
function content_62b349e0418d78_26891187 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:./header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
    <main>
      <section class="container-fluid bg-warning text-center" id="home">
        <div class="display-1">Home</div>
        <a href="connect.php" class="btn btn-primary">se connecter</a>
      </section>

      <section class="container-fluid bg-danger text-center" id="contact">
        <div class="display-1">Contact</div>
      </section>

      <section class="container-fluid bg-success text-center" id="about">
        <div class="display-1">About</div>
      </section>
    </main>

<?php $_smarty_tpl->_subTemplateRender("file:./footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
