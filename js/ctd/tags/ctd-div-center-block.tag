<ctd-div-center-block>
  <div if={ is_pc } class="center-block pc-img">
    <div class="img-holder" data-image="{ image }" data-width="1440" data-height="835" data-extra-height="150">
      <div if={ (title.length > 0) } class="container subscribe text-center">
        <img src="/img/cursor.png" alt="" >
        <p class="recruit">{ title }</p>
        <p class="col-xs-8 col-xs-offset-2">ウェブの未来を一緒に作りませんか？<br>ネットイヤークラフトでは、ウェブサイト構築に携わる多彩な人材を探しています。</p>
        <div class="col-xs-12">
          <a href="recruit/index.html">
            <div class="bn_box">
              採用情報を見る<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
            </div><!--/.bn_box  -->
          </a>
        </div>
      </div>
    </div>
  </div>

  <div if={ !is_pc } class="center-block sp-img sp-lets">
      <div if={ (title.length > 0) } class="container subscribe text-center">
        <img src="/img/cursor.png" alt="">
        <p class="recruit">{ title }</p>
        <p class="col-xs-8 col-xs-offset-2">ウェブの未来を一緒に作りませんか？<br>ネットイヤークラフトでは、ウェブサイト構築に携わる多彩な人材を探しています。</p>
        <div class="col-xs-12">
          <a href="recruit/index.html">
            <div class="bn_box">
              採用情報を見る<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
            </div><!--/.bn_box  -->
          </a>
        </div>
      </div>
      <div if={ !title } ><img class="img-responsive center-block" src="{ image }" alt="" /></div>
  </div>

  <script>
  this.is_pc = (!navigator.userAgent.match(/(iPhone|iPad|Android)/)) ? true : false;
  this.image = this.opts.image || '/img/service-bg.jpg';
  this.title = this.opts.title || '';
  console.log('DEBUG:is_pc=' + this.is_pc);
  console.log('DEBUG:title=' + this.title);
  this.on('mount', function(){
    if ($('.img-holder').length) {
      $('.img-holder').imageScroll();
    }
  });
  </script>

  <style scoped>
  .pc-img {
    display: block;
  }
  .sp-img {
    display: block;
  }
  .img-holder .subscribe {
    position: relative !important;
    display: block !important;
    visibility: visible !important;
  }
  .recruit {
      font-size: 32px;
      font-family: 'Roboto', sans-serif;
  }
  p {
    color: #121212;
    word-spacing: 1px;
    line-height: 26px;
    font-size: 14px;
    margin: 1em 0;
  }
  .bn_box {
    color: #000;
    background-color: #FFFFFF;
    border: solid 2px #000;
  }
  .bn_box, .bn_box2 {
    display: inline-block;
    width: 200px;
    height: 60px;
    font-size: 16px;
    line-height: 59px;
    overflow: hidden;
    margin-top: 60px;
    margin-bottom: 15px;
    padding-left: 8px;
    cursor: pointer;
    text-align: center;
    position: relative;
    z-index: 10;
    -webkit-transition: color .2s linear, background .1s linear;
    -moz-transition: color .2s linear, background .1s linear;
    -ms-transition: color .2s linear, background .1s linear;
    -o-transition: color .2s linear, background .1s linear;
    transition: color .2s linear, background .1s linear;
  }
  </style>
</ctd-div-center-block>
