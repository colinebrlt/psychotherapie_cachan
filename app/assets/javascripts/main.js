function dynamicNavbar() {

  $(document).ready(function() {
    $(window).scroll(function() {    
        var scroll = $(window).scrollTop();
        var height = $(window).height() - $(".navbar").height();
    
        if (scroll >= height) {
            $(".navbar").addClass("bg-pink");
        } else {
          $(".navbar").removeClass("bg-pink");
        }
    });   
  });
};

function softScroll() {

  $(document).ready(function(){
    $( "a.scrollLink" ).click(function( event ) {
        event.preventDefault();
        $("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top }, 500);
    });
  });

}

softScroll();
dynamicNavbar();