//= require owl.carousel

function GoCarrousel()
{
    $(".owl-carousel").owlCarousel(
      {

        navigation : false, // Show next and prev buttons
        slideSpeed : 300,
        paginationSpeed : 400,
        singleItem:true,
        autoHeight : true,
        responsive : true,
        lazyLoad : true

      }
  );
  $(".owl-carousel").css( "display", "inline");
}
