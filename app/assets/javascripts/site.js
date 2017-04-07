
 $(document).on('turbolinks:load', function(){
 	$('.rating').raty({ path: '/assets/image/rating', scoreName: 'comment[rating]'});
 
 	$('.rated').raty({ path: '/assets/image/rating', 
 		readOnly: true,
 		score: function() {
 			return $(this).attr('data-score'); 
 		}
 	 });
 }); 