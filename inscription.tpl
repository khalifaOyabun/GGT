{include file="./header.tpl"}

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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


{include file="./footer.tpl"}