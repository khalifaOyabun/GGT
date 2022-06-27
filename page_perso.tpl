<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    {* <meta http-equiv="refresh" content="1">  *}
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
    <div class="h6 text-light p-3">{$var.fname}</div>
      <a class="toggler" href="#">
        <img src={$var.photo} alt="votre avatar" style="width:30px;" class="rounded-pill"> 
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

{include file="./footer.tpl"}