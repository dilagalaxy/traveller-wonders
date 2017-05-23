$(document).on('turbolinks:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
	$(".enable-review").click( function() {
		$(".review-container").show();
	});

  // elevate zoom
  $('.img-zoom').elevateZoom({
  	responsive: true,
  	zoomWindowWidth:500,
  	zoomWindowHeight:300,
  	zoomWindowFadeIn: 500,
  	zoomWindowFadeOut: 750,
  	scrollZoom : true
  });
}); 