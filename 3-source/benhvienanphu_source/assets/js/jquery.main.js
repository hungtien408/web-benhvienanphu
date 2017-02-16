function pageLoad() {
}

(function ($) {
    $(window).load(function () {
        EqualSizer('.service-box ');
        EqualSizer('.tab-box');
        EqualSizer('.news-box');
        EqualSizer('.list-posts .post-box');
        heightnewhot();
        height_pop();
    });
    $(window).resize(function () {
        heightnewhot();
        height_pop();
    })
    $(function () {
        myfunload();
    });
})(jQuery);
$(document).ready(function () {
    $(function () {
        var start = new Date();
        start.setFullYear(start.getFullYear() - 70);
        var end = new Date();
        end.setFullYear(end.getFullYear() - 18);

        $("[id$='btnBirthDay']").datepicker({
            changeMonth: true,
            changeYear: true,
            minDate: start,
            maxDate: end,
            yearRange: start.getFullYear() + ':' + end.getFullYear(),
            dateFormat: "mm/dd/yy",
            onSelect: function () {
                var a = $("[id$='btnBirthDay']").datepicker({ dateFormat: 'mm/dd/yyy' }).val();
                $("[id$='txtBirthDay']").val(a);
                $("[id$='hdnBirthDay']").val(a);
            }
        });
        //$("[id$='btnDate']").datepicker({
        //    changeMonth: true,
        //    changeYear: true,
        //    minDate: start,
        //    maxDate: end,
        //    yearRange: start.getFullYear() + ':' + end.getFullYear(),
        //    dateFormat: "mm/dd/yy",
        //    onSelect: function () {
        //        var a = $("[id$='btnDate']").datepicker({ dateFormat: 'mm/dd/yyy' }).val();
        //        $("[id$='txtDate']").val(a);
        //        $("[id$='hdnDate']").val(a);
        //    }
        //});
    });
})

$(document).ready(function () {
    $(function () {
        var start = new Date();
        start.setFullYear(start.getFullYear() - 70);
        var end = new Date();
        end.setFullYear(end.getFullYear() - 18);

        $("[id$='btnDate']").datepicker({
            changeMonth: true,
            changeYear: true,
            minDate: start,
            maxDate: end,
            yearRange: start.getFullYear() + ':' + end.getFullYear(),
            dateFormat: "mm/dd/yy",
            onSelect: function () {
                var a = $("[id$='btnDate']").datepicker({ dateFormat: 'mm/dd/yyy' }).val();
                $("[id$='txtDate']").val(a);
                $("[id$='hdnDate']").val(a);
            }
        });
    });
})

//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    $("#banner .item:first-child").addClass("active");
    
   
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
   

    $('#SliderWrap').owlCarousel({
        margin: 45,
        loop: true,
        autoplaySpeed: 4000,
        nav: false,
        dot:true,
        autoplay: false,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            766: {
                items: 2
            },
          
            1200: {
                items: 2
            },
        }
    });
    $('#slideNews').owlCarousel({
        margin: 45,
        loop: true,
        autoplaySpeed: 4000,
        nav: false,
        dot: true,
        autoplay: false,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        items:1,
    });
    $(function () {
        $('.cd-select').show();
        $('.content-panel').hide();
        $('.d1').show();

        $('#selectNav').on("change", function () {
            $('.content-panel').hide();
            $('.d' + $(this).val()).show();
        });
    });

    $(function () {
        $('a[data-modal]').on('click', function () {
            $($(this).data('modal')).modal();
            var modal = $(this).data('modal');
            $(modal + ' .sliderGallery .slider-for').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                autoplay: true,
                autoplaySpeed: 2000,
                asNavFor: modal + ' .sliderGallery .slider-nav'
            });
            $(modal + ' .sliderGallery .slider-nav').slick({
                slidesToShow: 7,
                slidesToScroll: 1,
                asNavFor: modal + ' .sliderGallery .slider-for',
                dots: false,
                arrows: true,
                autoplay: true,
                autoplaySpeed: 2000,
                focusOnSelect: true,
                responsive: [
               {
                   breakpoint: 600,
                   settings: {
                       slidesToShow: 5,
                   }
               },
               {
                   breakpoint: 400,
                   settings: {
                       slidesToShow: 3,
                   }
               }
                ]
            });
            return false;
        });
    });

    $('#sliderProject').slick({
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 2,
        arrows: true,
        rows: 2,
        centerMode: false,
        responsive: [
   {
       breakpoint: 992,
       settings: {
           slidesToShow: 2,
           slidesToScroll: 2,
           rows: 2,
       }
   }
        ]
    });
    /** popup **/

    $('#datlich').click(function () {
        $('#mainContent').append('<div id="overlay-screen-active">');
        $('.popup .popup-content').css('top', '30px');
    });
    $(document).on('click', ".popup-btn-close, #overlay-screen-active", function () {
        $('.popup-content').css('top', '-250%');
        $('#overlay-screen-active').fadeOut();
        $('#overlay-screen-active').remove();
        return false;
    });


    $('.scroll-popup .popup-content .form-popup').mCustomScrollbar({
        autoHideScrollbar: true,
        theme: "dark-thick",
    });

    mymap();
    myfunsroll();
    menusroll();
}


/*========================================================================*/
function heightnewhot() {
    n = $("#slideNews .item-img").height();
    $("#slideNews .item-wrap").outerHeight(n);
}

function myfunsroll() {
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}

function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $(".wrapper-menu").addClass("header-sroll");
    } else {
        $(".wrapper-menu").removeClass("header-sroll");
    }
}
/*===============================*/
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 320) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}


/*========================================================================*/
function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function () {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function () {
        DoEqualSizer(myclass);
    });
};
function height_pop() {
    var n = $(window).height();
    $('.scroll-popup').each(function () {
        var x = $(this).children('.popup-content').height();
        if (x > n) {
            $(this).children('.popup-content').css('max-height', n - 50);
            //$(this).children('.popup-content').css('height', 'auto');
        }
        else {
            $(this).children('.popup-content').css('max-height', n - 50);
        }
    })
    //$('.popup-content').css('max-height', n - 50);
}