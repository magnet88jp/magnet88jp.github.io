//トップページ：PC閲覧の場合パララックスjs追加
if(window.location.pathname == "/index.html"|| window.location.pathname == "/"){
  if(!navigator.userAgent.match(/(iPhone|iPad|Android)/)){
    $("#add_js").before('<script type="text/javascript" src="js/jquery.imageScroll.min.js"></script>');
    //jquery.imageScroll.js
    if ($('.img-holder').length) {
      $('.img-holder').imageScroll();
    }
  }
}

//***************** Waypoints ******************/
$('.wp1').waypoint(function(){
  $(this).addClass('animated fadeInLeft');
}, {
  offset: 'bottom-in-view'
});
$('.wp2').waypoint(function(){
  $('.wp2').addClass('animated fadeInUp');
}, {
  offset: '55%'
});
$('.wp4').waypoint(function(){
  $('.wp4').addClass('animated fadeInDown');
}, {
  offset: '75%'
});


//*****************  Nav Slide-In ******************/
$('#nav-toggle').click(function(){
  $('.pull').slideToggle();
  $(this).toggleClass('active');
  return false;
});

//***************** Smooth Scrolling ******************/
$('a[href*=#]:not([href=#])').click(function(){
  if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {
    var target = $(this.hash);
    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
    if (target.length) {
      $('html,body').animate({
        scrollTop: target.offset().top
      }, 1000);
      return false;
    }
  }
});

//***************** Flexsliders ******************/
  if ($('#officeSlider').length) {
    $('#officeSlider').flexslider({
      animation: "slide",
      directionNav: true,
      controlNav: true,
      touch: true,
      pauseOnHover: true,
      start: function(){
        $.waypoints('refresh');
      }
    });
  }

  if ($('.flexslider').length) {
    $('.flexslider').flexslider({
      animation: "slide",
      easing: "easeInExpo",
      directionNav: true,
      controlNav: true,
      touch: true,
      pauseOnHover: true, start: function(){
        $.waypoints('refresh');
      }
    });
  }

//***************** modal vague.js  ******************/
if($('.modal-open').length){
  $('.modal-open').click(function(){
    var vague = $('.blur-area').Vague({intensity: 5});
    vague.blur();
    $('body').append('<div class="modal-overlay"></div>');
    var modal = $(this).attr('data-target');
    $('.slideout-menu').each(function(){
      if ($(this).hasClass(modal)) {
        $(this).animate({
          right: "0%"
        });
      }
    });
    $('.modal-overlay').fadeIn('slow');
    $('.modal-overlay, .slideout-menu-toggle').off().click(function(){
      $('.slideout-menu').animate({
        right: "-70%"
      });
      $('.modal-overlay').fadeOut('slow',function(){
        $('.modal-overlay').remove();
      });
      vague.unblur();
    });
  });
}

//***************** etc ******************/
//video 表示・非表示設定
  var movie = $('#video');
  $(window).scroll(function(){
    if ($(this).scrollTop() > 900) {
      movie.css('visibility', 'hidden');
    } else {
      movie.css('visibility', 'visible');
    }
  });
//サイドナビ 表示・非表示設定
  $('.fix-nav').hide();
  $(window).scroll(function(){
    if ($(this).scrollTop() > 620 && $(window).width() > 767) {
      $('.fix-nav').fadeIn();
    } else {
      $('.fix-nav').fadeOut();
    }
  });
//サイドナビ tooltip
  $('[data-toggle="tooltip"]').tooltip();

//トップページへ戻る　表示・挙動
  var pagetop = $('.pagetop');
  $(window).scroll(function(){
    if ($(this).scrollTop() > 100) {
      pagetop.fadeIn();
    } else {
      pagetop.fadeOut();
    }
  });
  pagetop.click(function(){
    $('body, html').animate({scrollTop: 0}, 650);
    return false;
  });
//jquery.textillate.js
  if ($('.textillate').length) {
    $('.textillate').textillate();
  }
//UA判定でパララックス画像・代替画像の表示切り替え
  if (navigator.userAgent.match(/(iPhone|iPad|Android)/)) {
    $(".sp-img").css("display", "block");
    $(".pc-img").css("display", "none");
  } else {
    $(".sp-img").css("display", "none");
    $(".pc-img").css("display", "block");
  }
//タイマー設定
  setTimeout(function(){
    $('.textillate').css('display', 'block');
  }, 1);
//

//localnav_matchheight
(function($){
//  matchHeight
  if($('.js-lnav1-matchHeight1').length){
    $('.js-lnav1-matchHeight1').matchHeight();
//    $('.js-matchHeight2').matchHeight();
    window.on('resize',function(){
      $('.js-lnav1-matchHeight1').matchHeight();
    });
  }

})(jQuery);







// snowfall
/*--
  if(window.location.pathname == "/index.html"|| window.location.pathname == "/"){
    $("#add_js").before('<script type="text/javascript" src="js/snowfall.jquery.js"></script>');
  } else {
    $(".pagetop").after('<script type="text/javascript" src="../js/snowfall.jquery.js"></script>');
  }
  var snowflake = 0;
  if (navigator.userAgent.match(/(iPhone|iPad|Android)/)) {
      snowflake = 150;
  } else {
      snowflake = 500;
  }
  $(document).snowfall({
    // 雪の量 (数値)
    flakeCount : snowflake,
    // 色 (RGB)
    flakeColor : "#f6f6ff",
    // z-indexの値
    flakeIndex : "888",
    // 最小サイズ （数値）
    minSize : 3,
    // 最大サイズ（数値）
    maxSize : 10,
    // 最低速度（数値）
    minSpeed : 3,
    // 最高速度（数値）
    maxSpeed : 6,
    // 雪の形を丸にする（boolean）
    round : true,
    // 影をつける（boolean）
    shadow : false
    // 要素に積もらせる場合
    //collection : "積もらせる要素",
    // オリジナル画像を使用する場合
    //image : "画像へのパス"
  });
  --*/