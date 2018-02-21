(function() {
  'use strict';
  
  
  $(document).ready(function() {
    
    $('.change-registration-page-btn').click(function(e) {
      e.preventDefault();
      var targetPage = $(this).attr('data-target-page');
      var targetElement = $('.registration-page[data-page="'+ targetPage +'"]');
      var targetNumberElement = $('.page-number[data-page="'+ targetPage +'"]');
      $('.page-number').removeClass('active');
      targetNumberElement.addClass('active');
      
      $(this).parents('.registration-page').fadeOut(400, function() {
        targetElement.fadeIn(400);
      });
      
      $('.header-registration').fadeOut(400, function() {
        $('.header-background-info').fadeIn(400);
      });
    });
    
  });
  
})();