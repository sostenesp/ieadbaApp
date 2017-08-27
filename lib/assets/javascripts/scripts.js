(function(){
	'use strict';

	// preview image upload
	function readURL(input) {

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        $('#preview-foto').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
	}

	$("#foto").change(function(){
	  readURL(this);
	});


	// gera pdf do formulario
	var form = $('.form-horizontal'),
	cache_width = form.width(),
	a4 = [595.28, 841.89]; // for a4 size paper width and height

	$('.cabecalho').hide();

	$('#create_pdf').on('click', function() {
		$('#foto').hide();
		$('#label-foto').hide();
		$('#preview-foto').hide();
		$('.help-block').hide();
		$('#create_pdf').hide();
		$('.btn-cadastrar').hide();
		$('.cabecalho').show();

		$('body').scrollTop(0);
		createPDF();
	});
	//create pdf
	function createPDF() {
		getCanvas().then(function(canvas) {
		 var img = canvas.toDataURL("image/png"),
		  doc = new jsPDF({
		   unit: 'px',
		   format: 'a4'
		  });
		 doc.addImage(img, 'JPEG', 20, 20);
		 doc.save('formulario.pdf');
		 form.width(cache_width);

		$('#foto').show();
		$('#label-foto').show();
		$('#preview-foto').show();
		$('.help-block').show();
		$('#create_pdf').show();
		$('.btn-cadastrar').show();
		$('.cabecalho').hide();
		});
	}

	// create canvas object
	function getCanvas() {
		form.width((a4[0] * 1.33333) - 80).css('max-width', 'none');
		return html2canvas(form, {
		 imageTimeout: 2000,
		 removeContainer: true
		});
	}

}());