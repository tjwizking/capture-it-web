(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $(".dropdown-button").dropdown({ hover: false });
    $('ul.tabs').tabs();
  
    	
	// Tabs Fixed
    if ($('.tabs-wrapper').length) {
      $('.tabs-wrapper .row').pushpin({ top: $('.tabs-wrapper').offset().top });
    }

   

    

  }); // end of document ready
  
})(jQuery); // end of jQuery name space

