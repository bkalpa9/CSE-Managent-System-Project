jQuery(document).ready(function(){
	
	jQuery(window).load(function() {
		
		// menu drop-down
		jQuery('.menu-top li').hover(function(){
			jQuery(this).children('a').addClass('hover');
			jQuery(this).children('.sub-menu').stop().slideDown(200);
		}, function(){
			jQuery(this).children('a').removeClass('hover');
			jQuery(this).children('.sub-menu').stop().slideUp(200);
		});
		
		jQuery('.menu-top li').hover(function(){
			jQuery(this).children('a').addClass('hover');
			jQuery(this).children('.children').stop().slideDown(200);
		}, function(){
			jQuery(this).children('a').removeClass('hover');
			jQuery(this).children('.children').stop().slideUp(200);
		});		
		
		jQuery('.menu-top-mob-container .icon-menu').click(function(e) {
			e.preventDefault();
		}).toggle(function(){
			jQuery(this).parent('.menu-top-mob-container').children('.menu-top-mob').stop().slideDown(200);
		}, function(){
			jQuery(this).parent('.menu-top-mob-container').children('.menu-top-mob').stop().slideUp(200);
		});
		
		// owl-carousel
		jQuery(".welcome-carousel").owlCarousel({
			// Most important owl features
			itemsTabletSmall: true,
			singleItem : true,
			itemsScaleUp : true,
			//Basic Speeds
			paginationSpeed : 800,
			rewindSpeed : 1000,
			//Autoplay
			stopOnHover : true,
			// Navigation
			navigation : true,
			navigationText : ["",""],
			rewindNav : true,
			scrollPerPage : false,
			//Pagination
			pagination : true,
			paginationNumbers: false,
			// Responsive
			responsive: true,
			responsiveRefreshRate : 100,
			responsiveBaseWidth: window,
			// CSS Styles
			baseClass : "owl-carousel",
			theme : "owl-theme",
			//Lazy load
			lazyLoad : false,
			lazyFollow : true,
			lazyEffect : "fade",
			//Auto height
			autoHeight : true,
			//JSON
			jsonPath : false,
			jsonSuccess : false,
			//Mouse Events
			dragBeforeAnimFinish : true,
			mouseDrag : true,
			touchDrag : true,
			//Transitions
			transitionStyle : "fade", // "fade", "backSlide", "goDown" and "fadeUp"
			// Other
			addClassActive : true
		});
		
		// article-image hover
		jQuery('.article-image').hover(function(){
			jQuery(this).addClass('hover');
			jQuery(this).children('.fa').stop().fadeIn(300);
		}, function(){
			jQuery(this).removeClass('hover');
			jQuery(this).children('.fa').stop().fadeOut(300);
		});
		
		// input focus
		jQuery(".wpcf7-form .wpcf7-text, .wpcf7-form .wpcf7-textarea, .searchform #s").focus(function(){
			var value = jQuery(this).attr("value");
			if (value == "")
			var attrfor = jQuery(this).attr('id');
			jQuery("label[for=" + attrfor + "]").css({"display":"none"});
		});
		jQuery(".wpcf7-form .wpcf7-text, .wpcf7-form .wpcf7-textarea, .searchform #s").blur(function(){
			var value = jQuery(this).attr("value");
			if (value == "")
			var attrfor = jQuery(this).attr('id');
			jQuery("label[for=" + attrfor + "]").css({"display":"block"});
		});
		
		// some css fix
		jQuery('.menu-top .sub-menu li:first-child, .menu-top .children li:first-child, .footer-block-columns .column-3-12:first-child, .footer ul li:first-child, .footer ol li:first-child, .get-in-touch div:first-child, .menu-top-mob li:first-child, .breadcrumbs li:first-child, .sidebar-container .widget:first-child, .widget-text p:first-child, .contact-widgets .widget:first-child, .widget-contact-info li:first-child, .wpcf7-form .label:first-child').addClass('first-child');
		jQuery('.menu-top .sub-menu li:last-child, .menu-top .children li:last-child, .footer-block-columns .column-3-12:last-child, .footer ul li:last-child, .footer ol li:last-child, .get-in-touch div:last-child, .menu-top-mob li:last-child, .breadcrumbs li:last-child, .sidebar-container .widget:last-child, .widget-text p:last-child, .contact-widgets .widget:last-child, .widget-contact-info li:last-child, .wpcf7-form .label:last-child').addClass('last-child');
		
	}); // Final load
	
}); // Final ready