$(window).load(function(){	
    var $container = $('.grid');
    $container.isotope({
		filter: '*',
		getSortData: {
			bookletAsc: '.booklet-num parseInt',
			bookletDec: '.booklet-num parseInt',
			pageAsc: '.page-num parseInt',
			pageDec: '.page-num parseInt'
		},
		sortAscending: {
			bookletDec: false,
			pageDec: false
		},
		isResizeBound: false		
    });
	
    $('.filter-group a').click(function(){
		$('.filter-group .current').removeClass('current');
		$(this).addClass('current');

		var selector = $(this).attr('data-filter');
		$container.isotope({
			filter: selector
		 });
    }); 

	$('.sort-group-booklet a').click(function(){ 
		$('.sort-group-booklet .current').removeClass('current');
		$(this).addClass('current');
	
		var sortValue = $(this).attr('data-sort');
		$container.isotope({
			sortBy: sortValue
		});
	});
	
	$('.sort-group-page a').click(function(){ 
		$('.sort-group-page .current').removeClass('current');
		$(this).addClass('current');
	
		var sortValue = $(this).attr('data-sort');
		sortValue = sortValue.split(',');
		if (sortValue.length > 1) {	
			if ($('.sort-group-booklet a[data-sort="bookletAsc"]').is('[class="current"]')) {
				sortValue[0] = "bookletAsc";
			} else {
				sortValue[0] = "bookletDec";
			}
		}
		$container.isotope({
			sortBy: sortValue
		});
	});
});
