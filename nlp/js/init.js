(function($){
  $(function(){

    $('.button-collapse').sideNav();

    $(document).ready(function() {
       $('.slider').slider({
          full_width: false,
          interval: 5000,
          transition: 800,
          });
       });
  }); // end of document ready
})(jQuery); // end of jQuery name space