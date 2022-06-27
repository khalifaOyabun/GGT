$(function () {
  // active class handling
  let navLinks = $(".nav-link");
  navLinks.click(function (e) {
    e.preventDefault;
    navLinks.removeClass("active");
    $(this).addClass("active");
  });

  // alert handling
  let warning = $(".alerte").text();
  if (warning.length > 0) {
    if (warning == "Genial !") {
      location.href = "./page_perso.php";
    } else {
      console.log("erreur");
    }
  }

  // show photo
  $(function () {
    $(".toggler").on("click", function () {
      $(".popUp").toggleClass("active");
    });
  });
});
