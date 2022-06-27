<?php
/* Smarty version 3.1.32, created on 2022-06-22 18:55:19
  from 'C:\wamp\www\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\GGT\page_perso.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_62b36597befd20_90862118',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '96a8ea3efd6d3c586c0adf2fa556e7f5f58d83ba' => 
    array (
      0 => 'C:\\wamp\\www\\STAGE_GGT_2022_SIPRES_DAKAR_SENEGAL\\GGT\\page_perso.tpl',
      1 => 1655915574,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:./footer.tpl' => 1,
  ),
),false)) {
function content_62b36597befd20_90862118 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./style.css?5896524565214" />
    <link
      rel="stylesheet"
      href="../../Plugins/Bootstrap/css/bootstrap.min.css"
    />
    
    <title>Document</title>
  </head>
  <body>

  <nav class="container-fluid text-end bg-dark navbar-dark d-flex justify-content-end">
    <div class="d-flex align-items-center justify-content-center" style="width:200px;">
    <div class="h6 text-light p-3"><?php echo $_smarty_tpl->tpl_vars['var']->value['fname'];?>
</div>
      <a class="toggler" href="#">
        <img src=<?php echo $_smarty_tpl->tpl_vars['var']->value['photo'];?>
 alt="votre avatar" style="width:30px;" class="rounded-pill"> 
      </a>
    </div>
  </nav>

<div class="container popUp p-0 m-0">
  <div class="background"></div>
    <div class="boite container">
      <button class="btn btn-danger toggler toggler-close">X</button>
      <div class="h1">Voici le Titre</div>
      <p>j'ecris un gros texte n'ayant pas de sens juste pour remplir ce modal qui refuse de marcher normalement par contre si tu vois ca cela veut dire que j'ai finalement reussi et que le modal marche normalement</p>
    </div>
  </div>
</div>

<?php $_smarty_tpl->_subTemplateRender("file:./footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
