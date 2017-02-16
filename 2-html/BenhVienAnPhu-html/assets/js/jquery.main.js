function pageLoad() {
}

(function ($) {
    $(window).load(function () {
        EqualSizer('.service-box ');
        EqualSizer('.tab-box');
        EqualSizer('.news-box');
        heightnewhot();
    });
    $(window).resize(function () {
        heightnewhot();
    })
    $(function () {
        myfunload();
    });
})(jQuery);
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
    
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });
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