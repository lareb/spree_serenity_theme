// ================
// Tweetjs function
// ================

//$("#tweet").tweet({
//  avatar_size: 32,
//  count: 2,
//  username : 'envato',
//  //query: "envato",
//  template: "{text} <br />{time}",
//  loading_text: "searching twitter..."
//}).bind("loaded", function() {
//    $(this).find("a").attr("target","_blank");
//});

// ===============
// Slider function
// ===============
function slider(){

	//Main slider
	$('#flexcarousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 188,
    //itemMargin: 5 ,
    asNavFor: '#flexslider'
  });

  $('#flexslider').flexslider({
    animation: "slide",
    controlNav: true,
    animationLoop: true,
    slideshow: true,
	slideshowSpeed: 5000,
	animationSpeed: 600,
    sync: "#flexcarousel"
  });

  // Thubnail
  $('#flexcarousel-product').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 115,
    asNavFor: "#flexslider-product"
  });

  $('#flexslider-product').flexslider({
    animation: "slide",
    controlNav: true,
    animationLoop: true,
    slideshow: false,
    sync: "#flexcarousel-product"
  });

  // Brands
  $('#flexcarousel-brands').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: true,
    slideshow: false,
    itemWidth: 182
  });
}

// ===================
// Navigation function
// ===================

function navWidth(){
	var nav = $('.horizontal-nav ul li').not('.horizontal-nav ul li li'),
	size = $('.horizontal-nav ul li').not('.horizontal-nav ul li li').size(),
	percent = 100/size;
	nav.css('width', percent+'%').parent().show();
}

$('.horizontal-nav ul li').mouseenter(function(){
	$('ul', this).stop().slideDown('fast');
}).mouseleave(function(){
	$('ul', this).stop().slideUp(150);
});

//if ($.browser.msie) {
//	//Back off
//} else {
	selectnav('nav', {
		label: 'Menu'
	});
//}

// ======================
// Thumbnail Hover Effect
// ======================

function thumbHover(){

	if ($('html').hasClass('csstransforms3d')) {

		$('.thumb').removeClass('scroll').addClass('flip');
		$('.thumb.flip').hover(
			function () {
				$(this).find('.thumb-wrapper').addClass('flipIt');
			},
			function () {
				$(this).find('.thumb-wrapper').removeClass('flipIt');
			}
		);

	} else {

		$('.thumb').hover(
			function () {
				$(this).find('.thumb-detail').stop().animate({bottom:0}, 500, 'easeOutCubic');
			},
			function () {
				$(this).find('.thumb-detail').stop().animate({bottom: ($(this).height() * -1) }, 500, 'easeOutCubic');
			}
		);

	}
}

// replace obfuscated email address w/javascript for bots
function replaceSafeEmail(safeEmail) {
  return safeEmail.replace(" at ", "@").replace(" dot ", ".");
}

// ============
// Initial load
// ============

$(function(){
  // ==========
  // Google Map
  // ==========

  if ($('#map').hasClass('gmap')) {
	  $('.gmap').mobileGmap();
  }

	// Cart bubble
	$('.counter a').on('click', function(){
		$('.cartbubble').slideToggle();
	});
	$('#closeit').on('click',function(e){
		e.preventDefault;
		$('.cartbubble').slideUp();
	});

	// Tab function
	$('#myTab a, #myTab button').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
	});

	// Fancybox function
//	$('#flexslider-product .slides a').fancybox();

	// Toggle function
	$('.product h6.subhead').on('click', function(){
		$('.query').slideToggle();
	});

    $(".collapse").collapse();

	slider();
	navWidth();
	thumbHover();

  $(".sidebar ul.taxons-list li a").prepend("<i class='icon-right-open'> ");

  // Fix issue with hidden div being first in form, causing bootstrap classes not to line up right.  Move it to end.
  var hidden_div = $("form input[name=authenticity_token]").parent();
  hidden_div.each(function() {
    $(this).appendTo($(this).parent());
  });

  $("button, input[type=submit], .button").addClass("btn");
  $("div.flash.error, div.errorExplanation").addClass("alert alert-error");
  $("div.flash.alert").addClass("alert");
  $("div.flash.success").addClass("alert alert-success");
  $("div.flash.notice").addClass("alert alert-success");

  $("#progress .spin").spin({length: 14});

  $("a[href^='mailto:']").hover(function() {
     $(this).attr("href", replaceSafeEmail($(this).attr("href")));
  });
});

