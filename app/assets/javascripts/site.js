
 $(document).on("turbolinks:load", function () {
   $(".rating").raty( { path: '/assets/images/images', scoreName: 'comment[rating]' });
   $(".rated").raty({ path: "/assets/images/images",
     readOnly: true,
     score: function() {
       return $(this).attr("data-score");
     }
   });
 
   $(".enable-review").click( function() {
     $(".review-container").show();
   });
 
 }); 