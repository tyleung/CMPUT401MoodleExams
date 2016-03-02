$(window).load(function(){	
    var $container = $('.grid');
    $container.isotope({
        filter: '*',
		getSortData: {
			bookletAsc: '.booklet parseInt',
			bookletDec: '.booklet parseInt'
		},
		sortAscending: {
			bookletDec: false
		},
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
    }); 

	$('.sort-group a').click(function(){ 
		var sortValue = $(this).attr('data-sort');
		$container.isotope({ sortBy: sortValue });
	});
});
