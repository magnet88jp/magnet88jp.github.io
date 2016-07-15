<ctd-div-features>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="features-wrapper clearfix">
          <div class="col-md-3 wp2">
            <div class="icon">
              <i class="fa fa-newspaper-o"></i>
            </div>
            <h2>要件定義</h2>
            <p>お客さまのビジネスにおける課題やニーズを的確に整理し、解決に至るまでのプロセスと最大限の成果を得られる方法を考え、確実にゴールに導くプランを提案いたします。</p>
          </div>
          <div class="col-md-3 wp2 delay-05s">
            <div class="icon">
              <i class="fa fa-pencil"></i>
            </div>
            <h2>設計</h2>
            <p>専門職であるインフォーメーションアーキテクトが要件定義に基いて情報設計を行い、ウェブサイトを閲覧するユーザーに対して有益で有効な構造設計・画面設計を実現します。</p>
          </div>
          <div class="col-md-3 wp2 delay-1s">
            <div class="icon">
              <i class="fa fa-desktop"></i>
            </div>
            <h2>実装</h2>
            <p>経験豊富で優秀なクリエイター・エンジニアたちが知識と技術を結集して、お客さまのご要望を反映した高品質なウェブサイトを最適な方法によって構築します。</p>
          </div>
          <div class="col-md-3 wp2 delay-15s">
            <div class="icon">
              <i class="fa fa-cogs"></i>
            </div>
            <h2>運用</h2>
            <p>長年に亘る数々の大規模ウェブサイト運用実績を誇る弊社のノウハウにより、どのような業種・業態であっても最適な運用体制を整え、安全・確実にウェブサイトのメンテナンス業務を行います。</p>
          </div>

          <div each={ items } class="col-md-3 wp2 { delay }">
            <div class="icon">
              <i class="fa { icon }"></i>
            </div>
            <h2>{ title }</h2>
            <p>{ description }</p>
          </div>

        </div>
      </div>
    </div>
  </div>

  <script>
    this.items = [
      {icon: "fa-newspaper-o", title: "要件定義",
        description: "お客さまのビジネスにおける課題やニーズを的確に整理し、解決に至るまでのプロセスと最大限の成果を得られる方法を考え、確実にゴールに導くプランを提案いたします。"},
      {icon: "fa-pencil", delay: "delay-05s",title: "設計",
        description: "専門職であるインフォーメーションアーキテクトが要件定義に基いて情報設計を行い、ウェブサイトを閲覧するユーザーに対して有益で有効な構造設計・画面設計を実現します。"},
      {icon: "fa-desktop", delay: "delay-1s",title: "実装",
        description: "経験豊富で優秀なクリエイター・エンジニアたちが知識と技術を結集して、お客さまのご要望を反映した高品質なウェブサイトを最適な方法によって構築します。"},
      {icon: "fa-cogs", delay: "delay-15s",title: "運用",
        description: "長年に亘る数々の大規模ウェブサイト運用実績を誇る弊社のノウハウにより、どのような業種・業態であっても最適な運用体制を整え、安全・確実にウェブサイトのメンテナンス業務を行います。"}
    ];
    this.on('mount', function(){
      $('.wp2').waypoint(function(){
        $('.wp2').addClass('animated fadeInUp');
      }, {
        offset: '55%'
      });
    })
  </script>

  <style scoped>
  .icon {
    height: 175px;
    width: 175px;
    line-height: 175px;
    max-width: 100%;
    background: #f1c40f;
    border-radius: 50%;
    -o-border-radius: 50%;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    display: block;
    color: #fff;
    font-size: 55px;
    text-align: center;
    vertical-align: middle;
    position: relative;
    margin: 0 auto 50px;
  }
  .wp1 {
    visibility: hidden;
  }
  .bounceInLeft, .bounceInRight, .fadeInUp, .fadeInUpDelay, .fadeInDown, .fadeInUpD, .fadeInLeft, .fadeInRight, .bounceInDown {
    visibility: visible;
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
</ctd-div-features>
