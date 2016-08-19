<ctd-div-portfolio>
  <div class="container text-center">
    <div class="row">
      <div id="portfolioSlider01" class="flexslider hidden-xs">
        <ul class="slides">
          <li each={ slides }>
            <div each={ items } class="col-xs-4 wp4 { delay }">
              <div class="overlay-effect effects clearfix">
                <div class="img">
                  <img src="{ icon }" alt="">
                </div>
              </div>
              <h2>{ title }</h2>
              <p>{ description }</p>
            </div>
          </li>
        </ul>
      </div>

      <!-- /#portfolio_Slider .hiddenxs -->
      <div id="portfolioSlider02" class="flexslider visible-xs">
        <ul class="slides">
          <li each={ slides2 }>
            <div each={ items } class="col-xs-6 wp4 pr5">
              <div class="overlay-effect effects clearfix">
                <div class="img ml0">
                  <img src="{ icon }" alt="">
                </div>
              </div>
              <h2>{ title }</h2>
              <p>{ description }</p>
            </div>
          </li>
        </ul>
      </div><!-- /#portfolio_Slider .visible-xs -->
    </div>
  </div>
  <ctd-div-bn-box></ctd-div-bn-box>

  <script>
  this.items = this.opts.items || [
    {icon: "/img/solution_renewal.jpg", title: "ウェブサイトリニューアル",
      description: "お客さまのビジネスにおける課題を、ウェブサイトリニューアルを通じて解決いたします。要件定義・設計・制作・運用までをワンストップで提供いたします。"},
    {icon: "/img/solution_maitenance.jpg", delay: "delay-05s",title: "ウェブサイト運用",
      description: "長年にわたり多くの大規模サイト運用を行ってきた実績を生かし、お客様に応じて最適な運用方法や体制をご提案します。"},
    {icon: "/img/solution_rwd.jpg", delay: "delay-1s",title: "レスポンシブウェブデザイン",
      description: "ワンソースで複数デバイスの画面サイズにコンテンツの表示を最適化させ、マルチデバイス対応を実現します。"},
    {icon: "/img/solution_cms.jpg", title: "CMS構築",
      description: "パーソナライズ化できるCMSの提案や、サイト規模を問わないCMS構築など、お客さまにとって最適なCMSを提供します。"},
    {icon: "/img/solution_onsite.jpg", delay: "delay-05s",title: "オンサイト (常駐)",
      description: "お客さまの社内に弊社担当者を常駐させ、お客さまと二人三脚でウェブサイト運用業務を行うサービスです。"},
    {icon: "/img/solution_system.jpg", delay: "delay-1s",title: "システム開発・保守",
      description: "経験豊富なシステムエンジニアとプログラマがお客さまのご要望を確実に理解し、それを実現するための最適なシステムを設計・開発します。"},
    {icon: "/img/solution_ab.jpg", title: "ウェブサイト最適化",
      description: "アクセスログ解析・効果測定を行い、サイト内行動のボトルネックとなっている箇所を発見し、ウェブサイトを最適化していきます。"},
    {icon: "/img/solution_ux.jpg", delay: "delay-05s",title: "UXデザイン",
      description: "ユーザー中心の情報設計に基づく総合的なユーザー体験によって、ユーザーゴールとともにビジネスゴールの達成を実現します。"},
    {icon: "/img/solution_tairyou.jpg", delay: "delay-1s",title: "大量ページ制作",
      description: "数千ページに及ぶ大規模な制作のご依頼にも、社内のノウハウと自動化ツールの利用によりページ数による品質劣化のない安全かつ確実な対応が可能です。"},
    {icon: "/img/solution_guide.jpg", title: "ガイドライン策定",
      description: "豊富なウェブサイト制作・運用の実績に基づくノウハウを結集し、最適で高品質なガイドラインを策定します。"},
    {icon: "/img/solution_research.jpg", delay: "delay-05s",title: "リサーチ",
      description: "豊富な知識と経験をもとにお客さまの課題やニーズを的確に整理し、競合他社の動向やトレンドを調査したうえで最適な情報を提供いたします。"},
    {icon: "/img/solution_app.jpg", delay: "delay-1s",title: "モバイルアプリ制作",
      description: "スマートフォンアプリを中心に、各デバイスに合わせて最適なアプリケーションを緻密かつ迅速に開発いたします。"}
  ];
  // 3件ずつに分割
  this.slides = [];
  var slideitems = {};
  var arr = [];
  this.slides2 = [];
  var slideitems2 = {};
  var arr2 = [];
  for(var i = 0; i < this.items.length; i++) {
    arr.push(this.items[i]);
    arr2.push(this.items[i]);
    if(i%3 == 2 || i == this.items.length-1) {
      slideitems.items = arr;
      this.slides.push(slideitems);
      arr = [];
      slideitems = {};
    }
    if(i%2 == 1 || i == this.items.length-1) {
      slideitems2.items = arr2;
      this.slides2.push(slideitems2);
      arr2 = [];
      slideitems2 = {};
    }
  }

  this.on('mount', function(){
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
  });
  </script>

  <style scoped>
  .slides, .flex-control-nav, .flex-direction-navs{
    z-index: 40;
  }
  .flexslider {
    border: none !important;
    border-radius: 0 !important;
    box-shadow: 0 0 0 rgba(0, 0, 0, 0) !important;
    margin-bottom: 0;
  }
  .flexslider .flex-direction-nav .flex-next {
    width: 45px;
    height: 45px;
    background: url(../../img/nav_slideoutmenuslider_next.png) no-repeat 0 0;
    right: 10px;
    opacity: 1;
    background-size: 100%;
  }
  .flexslider .flex-direction-nav .flex-prev {
    width: 45px;
    height: 45px;
    background: url(../../img/nav_slideoutmenuslider_prev.png) no-repeat 0 0;
    left: 10px;
    opacity: 1;
    background-size: 100%;
  }
  .flexslider .flex-direction-nav .flex-next,
  .flexslider .flex-direction-nav .flex-prev {
    top: 20%;
  }
  .flexslider .flex-direction-nav .flex-next {
    right: 20px;
  }
  .flexslider .flex-direction-nav .flex-prev {
    left: 20px;
  }
  @media (max-width: 1200px) {
    .flexslider .flex-direction-nav .flex-next,
    .flexslider .flex-direction-nav .flex-prev {
      top: 18%;
    }
  }
  @media (max-width: 991px) {
    .flexslider .flex-direction-nav .flex-next,
    .flexslider .flex-direction-nav .flex-prev {
      top: 14%;
    }
  }
  @media (max-width: 767px) {
    .flexslider .flex-direction-nav .flex-next,
    .flexslider .flex-direction-nav .flex-prev {
      top: 21%;
    }
  }
  @media (max-width: 650px) {
    .flexslider .flex-direction-nav .flex-next,
    .flexslider .flex-direction-nav .flex-prev {
      top: 19%;
    }
  }
  @media (max-width: 543px) {
    .flexslider .flex-direction-nav .flex-next,
    .flexslider .flex-direction-nav .flex-prev {
      top: 15%;
    }
  }
  @media (max-width: 450px) {
    .flexslider .flex-direction-nav .flex-next {
      top: 14%;
      right: 25px;
    }
    .flexslider .flex-direction-nav .flex-prev {
      top: 14%;
      left: 25px;
    }
    }
  }
  @media (max-width: 420px) {
    .flexslider .flex-direction-nav .flex-next {
      top: 10%;
      right: 45px;
    }
    .flexslider .flex-direction-nav .flex-prev {
      top: 10%;
      left: 45px;
    }
  }
  @media (max-width: 400px) {
    .flexslider .flex-direction-nav .flex-next {
      top: 10.5%;
    }
    .flexslider .flex-direction-nav .flex-prev {
      top: 10.5%;
    }
  }
  @media (max-width: 320px) {
    .flexslider .flex-direction-nav .flex-next {
      top: 9%;
      right: 20px;
    }
    .flexslider .flex-direction-nav .flex-prev {
      top: 9%;
      left: 20px;
    }
  }
  .flexslider .flex-direction-nav .flex-next:before,
  .flexslider .flex-direction-nav .flex-prev:before {
    content: none;
  }
  h1 + p, .slides h2 + p {
    text-align: center;
  }
  @media (max-width: 767px) {
    h1 + p, .slides h2 + p {
      text-align: left;
    }
  }
  ul.slides li {
    margin-bottom: 20px;
  }
  .delay-05s {
    animation-delay: 0.5s;
    -webkit-animation-delay: 0.5s;
  }
  .delay-1s {
      animation-delay: 1s;
      -webkit-animation-delay: 1s;
  }
  .delay-15s {
      animation-delay: 1.5s;
      -webkit-animation-delay: 1.5s;
  }
  </style>
</ctd-div-portfolio>
