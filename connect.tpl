{include file="./header.tpl"}
<div class="container mt-5">
  {if $var.submitted eq true}
    {if $var.state eq true}
      <div class="alert alert-success" id="success">
        <strong class="alerte">Genial !</strong> La connexion a réussi !
      </div>
    {else}
        {* {$var.email = $email} *} 
        <div class="alert alert-danger" id="echec">
          <strong class="alerte">Erreur !</strong> La connexion a échoué !
        </div>
    {/if}
  {/if}
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
{include file="./footer.tpl"}
