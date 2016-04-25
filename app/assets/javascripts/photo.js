//= require dropzone
//= require jquery.slick
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
function GoDropzone(){
  Dropzone.autoDiscover = false;
  $("#new_photo").dropzone({
    maxFilesize: 3,
    paramName: "photo[image]",
    success: function(file, response){
      $(file.previewTemplate).find('.dz-remove').attr('id', response.fileID);
      $(file.previewElement).addClass("dz-success");
    }
  });
}
$('[data-toggle="tooltip"]').tooltip()
