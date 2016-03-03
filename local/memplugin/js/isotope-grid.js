$(window).load(function(){	
    var $container = $('.grid');
    $container.isotope({
        filter: '*',
        animationOptions: {
            duration: 750,
            easing: 'linear',
            queue: false
        },
		//layoutMode: 'fitRows',
		//layoutMode : 'fitColumns',
		resizesContainer: false,
		resizable: false
		
    });
	
    $('.filter-group a').click(function(){
        $('.filter-group .current').removeClass('current');
        $(this).addClass('current');
 
        var selector = $(this).attr('data-filter');
        $container.isotope({
            filter: selector,
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
         });
         return false;
    }); 
});