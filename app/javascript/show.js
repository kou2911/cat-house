$(function () {
  $(".sub-cat img").on("click", function () {
    img = $(this).attr("src");
    $(".main-cat img").fadeOut(500, function () {
      $(".main-cat img")
        .attr("src", img)
        .on("load", function () {
          $(this).fadeIn(500);
        });
    });
  });
});