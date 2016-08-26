<ctd-section-featured-work>
  <div class="container-fluid">
    <div class="row">
      <ul class="grid">
        <li each={ items }>
          <a data-target="con1" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="{ image }" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>{ title }</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
      </ul>
    </div>
  </div>


  <script>
  this.items = this.opts.items || [
    {image: "/img/a.jpg", title: "ワークスタイル選択制度"},
    {image: "/img/b.jpg", title: "書籍執筆"},
    {image: "/img/c.jpg", title: "社内勉強会"},
    {image: "/img/d.jpg", title: "服装・髪型自由"},
    {image: "/img/e.jpg", title: "検証端末の充実"},
    {image: "/img/f.jpg", title: "MVP制度"},
    {image: "/img/h.jpg", title: "最新技術の導入"},
    {image: "/img/g.jpg", title: "社内パーティー"}
  ];
  this.blurarea = this.opts.blurarea || 'body';
  this.on('mount', function(){
    if($('.modal-open').length){
      $('.modal-open').click(function(){
        var vague = $( blurarea ).Vague({intensity: 5});
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
  })
  </script>

  <style scoped>
  /* Scene layout */
  a {
    display: block;
    cursor: pointer;
  }
  ul {
    margin: 0;
    padding: 0;
    width: 100%
  }
  ul li {
    float: left;
    min-height: 100%;
    width: 25%;
    background-color: #fff;
    list-style: none;
  }
  @media (max-width: 960px) {
    ul li {
      float: left;
      width: 50%;
      background-color: #fff;
      list-style: none;
    }
  }
  figure {
    position: relative;
    overflow: hidden;
  }
  figure img.on {
    position: absolute;
    top: 40%;
    left: 45%;
    width: 11%;
    height: 14%;
  }
  figure img {
    width: 100%;
    height: auto;
    -moz-transition: all 300ms ease-in-out;
    -o-transition: all 300ms ease-in-out;
    -webkit-transition: all 300ms ease-in-out;
    transition: all 300ms ease-in-out
  }
  figure:hover img, figure:focus img {
    -moz-transform: scale(1.1);
    -ms-transform: scale(1.1);
    -o-transform: scale(1.1);
    -webkit-transform: scale(1.1);
    transform: scale(1.1)
  }
  figcaption {
    position: absolute;
    top: 0;
    left: 0;
    padding: 25% 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 216, 0, 0.8);
    text-align: center;
    font-size: 15px;
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    -moz-transition: all 300ms ease-in-out;
    -o-transition: all 300ms ease-in-out;
    -webkit-transition: all 300ms ease-in-out;
    transition: all 300ms ease-in-out
  }
  figcaption a {
    color: #fff;
  }
  figcaption a:hover, figcaption a:focus {
    color: #fff
  }
  figure:hover figcaption, figure:focus figcaption {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
    will-change: transform;
  }
  figure.cs-hover figcaption {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1
  }
  figcaption h1 {
    font-size: 16px;
    color: #1c1c1c;
    text-transform: uppercase;
    font-weight: normal;
    font-family: "Open Sans", "Helvetica Neue", Helvetica, "Arial", "游ゴシック", YuGothic, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
  }
  figcaption h1::after {
    content: " ";
    border: solid 2px #fff4c6;
    display: block;
    width: 35px;
    margin: 25px auto;
  }
  figcaption p {
    margin: 10px;
    color: #000;
    font-size: 16px;
    line-height: 25px
  }
  figcaption .caption-content {
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -30px;
    margin-left: -150px;
    width: 300px;
    -moz-transform: translate(0, 15px);
    -ms-transform: translate(0, 15px);
    -o-transform: translate(0, 15px);
    -webkit-transform: translate(0, 15px);
    transform: translate(0, 15px);
    -moz-transition: all 300ms ease-in-out;
    -o-transition: all 300ms ease-in-out;
    -webkit-transition: all 300ms ease-in-out;
    transition: all 300ms ease-in-out;
  }
  figure:hover figcaption .caption-content, figure:focus figcaption .caption-content {
    -moz-transform: translate(0, 0);
    -ms-transform: translate(0, 0);
    -o-transform: translate(0, 0);
    -webkit-transform: translate(0, 0);
    transform: translate(0, 0);
  }
  span.icon {
    font-size: 6px;
    vertical-align: middle;
    margin: 0 5px
  }
  /* Scrne modal layout */
  .slideout-menu {
    position: fixed;
    top: 0;
    right: -40%;
    width: 40%;
    height: 100%;
    background: #fff;
    z-index: 100;
    overflow-y: scroll;
  }

  @media (max-width: 767px) {
    .slideout-menu {
      position: fixed;
      top: 0;
      right: -70%;
      width: 70%;
    }
  }
  .slideout-menu div.slideout-menu-closebtn {
    height: 70px;
    position: relative;
    color: #222;
    font-size: 1.2em;
    font-weight: 400;
    overflow: hidden;
  }
  .slideout-menu .slideout-menu-toggle {
    position: absolute;
    top: 18px;
    right: 22px;
    display: inline-block;
    padding: 6px 9px 5px;
    font-family: Arial, sans-serif;
    font-weight: bold;
    line-height: 1;
    color: #999;
    text-decoration: none;
    vertical-align: top;
    cursor: pointer;
  }
  .slideout-menu .slideout-menu-slider {
    margin: 0;
    background: none;
    border: none;
    border-radius: 0;
    box-shadow: none;
  }
  .slideout-menu-slider .flex-control-nav {
    display: none;
  }
  .slideout-menu-slider .flex-direction-nav .flex-next {
    width: 45px;
    height: 45px;
    background: url(../img/nav_slideoutmenuslider_next.png) no-repeat 0 0;
    right: 10px;
    opacity: 1;
  }
  .slideout-menu-slider .flex-direction-nav .flex-prev {
    width: 45px;
    height: 45px;
    background: url(../img/nav_slideoutmenuslider_prev.png) no-repeat 0 0;
    left: 10px;
    opacity: 1;
  }
  .slideout-menu-slider .flex-direction-nav .flex-next:before, .slideout-menu-slider .flex-direction-nav .flex-prev:before {
    content: none;
  }
  .slideout-menu-slider ul li {
    width: 100%;
    overflow: hidden;
  }
  .slideout-menu-slider ul li img {
    width: 100%;
    height: auto;
  }
  .slideout-menu-text {
    margin: 0 30px;
  }
  .slideout-menu-text h3 {
    font-size: 24px;
    font-weight: bold;
    margin-top: 30px;
  }
  @media (max-width: 767px) {
    .slideout-menu-text h3 {
      font-size: 16px;
      font-weight: bold;
      margin-top: 30px;
    }
  }
  </style>
</ctd-section-featured-work>
