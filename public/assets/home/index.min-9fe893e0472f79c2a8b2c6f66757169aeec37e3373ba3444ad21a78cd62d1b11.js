/*!
 * Start Bootstrap - Creative v5.0.1 (https://startbootstrap.com/template-overviews/creative)
 * Copyright 2013-2018 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap-creative/blob/master/LICENSE)
 */


!function(e){"use strict";e('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function(){if(location.pathname.replace(/^\//,"")==this.pathname.replace(/^\//,"")&&location.hostname==this.hostname){var a=e(this.hash);if((a=a.length?a:e("[name="+this.hash.slice(1)+"]")).length)return e("html, body").animate({scrollTop:a.offset().top-56},1e3,"easeInOutExpo"),!1}}),e(".js-scroll-trigger").click(function(){e(".navbar-collapse").collapse("hide")}),e("body").scrollspy({target:"#mainNav",offset:57});var a=function(){100<e("#mainNav").offset().top?e("#mainNav").addClass("navbar-shrink"):e("#mainNav").removeClass("navbar-shrink")};a(),e(window).scroll(a),window.sr=ScrollReveal(),sr.reveal(".sr-icon-1",{delay:200,scale:0}),sr.reveal(".sr-icon-2",{delay:400,scale:0}),sr.reveal(".sr-icon-3",{delay:600,scale:0}),sr.reveal(".sr-icon-4",{delay:800,scale:0}),sr.reveal(".sr-button",{delay:200,distance:"15px",origin:"bottom",scale:.8}),sr.reveal(".sr-contact-1",{delay:200,scale:0}),sr.reveal(".sr-contact-2",{delay:400,scale:0}),e(".popup-gallery").magnificPopup({delegate:"a",type:"image",tLoading:"Loading image #%curr%...",mainClass:"mfp-img-mobile",gallery:{enabled:!0,navigateByImgClick:!0,preload:[0,1]},image:{tError:'<a href="%url%">The image #%curr%</a> could not be loaded.'}})}(jQuery);
