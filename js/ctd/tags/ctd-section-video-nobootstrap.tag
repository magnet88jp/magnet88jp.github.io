<ctd-section-video>

  <div class="container-fluid">
    <div class="row kv-sp">
      <video autoplay loop poster="/img/kv_sp.png">
        <source src="/movie/craft_movie01.mp4" type="video/mp4">
        <img src="/img/kv_sp.png" alt="" class="hidden-lg">
      </video>
      <div class="row">
        <div class="pull-left logoarea">
          <a href="index.html"><img src="/img/logo_netyearcraft.png" alt="NETYEAR Craft" /></a>
        </div>
        <div class="pull-right navicon">
          <a id="nav-toggle" class="nav-slide-button" href="#"><span></span></a>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 text-center">
          <div class="key-visual textillate">Craftsmanship for Your Business</div>
        </div>
      </div>
    </div>
  </div>
  <div class="video-overlay"></div>

  <style scoped>
  .container-fluid {
      margin-right: auto;
      margin-left: auto;
      padding-left: 15px;
      padding-right: 15px;
  }
  .pull-right {
      float: right !important;
  }
  .pull-left {
      float: left !important;
  }
  .col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    float: left;
  }
  .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
  }
  .col-xs-12 {
    width: 100%;
  }
  video {
    position: absolute;
    right: 0;
    top: 0;
    display: block;
    min-width: 100%;
    min-height: 100%;
    /* width: auto; */
    height: auto;
    z-index: -100;
    overflow: hidden;
  }
  .video-overlay {
    overflow: hidden;
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    height: 640px;
    width: 100%;
    z-index: -1;
    background: transparent url("/img/pixel-screen.png") repeat scroll 0 0;
    opacity: 0.8;
  }
  .key-visual {
    font-size: 100px;
    font-family: 'Roboto', sans-serif;
    color: #fff;
    padding: 110px 7% 0;
  }
  .logoarea {
    margin-top: 20px;
    padding-left: 10%;
  }
  .navicon {
    position: relative;
    height: 26px;
    margin-top: 60px;
    margin-right: 4%;
  }
  #nav-toggle {
    position: absolute;
    right: 10%;
    top: 0;
    cursor: pointer;
    padding: 10px 35px 16px 0;
  }
  #nav-toggle span, #nav-toggle span:before, #nav-toggle span:after {
      transition: all 500ms ease-in-out;
      -webkit-transition: all 500ms ease-in-out;
      -moz-transition: all 500ms ease-in-out;
      -o-transition: all 500ms ease-in-out;
      cursor: pointer;
      border-radius: 1px;
      -moz-border-radius: 1px;
      -webkit-border-radius: 1px;
      -o-border-radius: 1px;
      height: 5px;
      width: 35px;
      background: #fff;
      position: absolute;
      display: block;
      content: '';
  }
  #nav-toggle span, #nav-toggle span:before, #nav-toggle span:after {
      cursor: pointer;
      border-radius: 1px;
      -moz-border-radius: 1px;
      -webkit-border-radius: 1px;
      -o-border-radius: 1px;
      height: 5px;
      width: 35px;
      background: #353535;
      position: absolute;
      display: block;
      content: '';
  }
  #nav-toggle span:before {
    top: -10px;
  }
  #nav-toggle span:after {
    bottom: -10px;
  }
  </style>

  <script>
  this.on('mount', function(){
    if ($('.textillate').length) {
      $('.textillate').textillate();
    }
  })
  </script>

</ctd-section-video>
