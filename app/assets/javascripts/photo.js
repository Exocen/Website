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
	// disable auto discover
	Dropzone.autoDiscover = false;

	// grap our upload form by its id
	$("#new_photo").dropzone({
		// restrict image size to a maximum 1MB
		maxFilesize: 1,
		// changed the passed param to one accepted by
		// our rails app
		paramName: "photo[image]",
		success: function(file, response){
			// find the remove button link of the uploaded file and give it an id
			// based of the fileID response from the server
			$(file.previewTemplate).find('.dz-remove').attr('id', response.fileID);
			// add the dz-success class (the green tick sign)
			$(file.previewElement).addClass("dz-success");
		}
	});
}
