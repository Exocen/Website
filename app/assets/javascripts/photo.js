function GoCarrousel()
{
  $('.carrousel').slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    adaptiveHeight: true,
    arrows: false

  });
    $('.slick-list').css( 'height', 'auto');
}
