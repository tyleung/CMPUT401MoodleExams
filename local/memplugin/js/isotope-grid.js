// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.

/**
 * Grid view for an exam.
 *
 * @package     local
 * @subpackage  memplugin
 * @copyright   Terence Leung tyleung@ualberta.ca
 * @license     http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

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
	
	var $pageContainer = $('.grid-page-nums');
	$pageContainer.isotope({
		filter: '*',
		getSortData: {
			pageAsc: '.page-num parseInt',
			pageDec: '.page-num parseInt'
		},
		sortAscending: {
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
		
		$pageContainer.isotope({
			sortBy: sortValue[1]
		});
	});
});
