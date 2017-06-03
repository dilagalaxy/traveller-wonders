$(document).on('turbolinks:load', function(){
    $('.alert-auto').delay(500).fadeIn('normal', function() {
       $(this).delay(2500).fadeOut();
    });
    $('.notice').delay(500).fadeIn('normal', function() {
       $(this).delay(2500).fadeOut();
    });
 });