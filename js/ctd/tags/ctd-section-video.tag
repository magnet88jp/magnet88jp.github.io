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
          <a id="nav-toggle" class="nav-slide-button" href="#" onclick="{ slideTogglePull }"><span></span></a>
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
  #nav-toggle.active span {
    background-color: transparent;
  }
  #nav-toggle.active span:before, #nav-toggle.active span:after {
    top: 0;
  }
  #nav-toggle.active span:before {
    transform: rotate(45deg);
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
  }
  #nav-toggle.active span:after {
    transform: translateY(-10px) rotate(-45deg);
    -webkit-transform: translateY(-10px) rotate(-45deg);
    -ms-transform: translateY(-10px) rotate(-45deg);
    top: 10px;
  }
  </style>

  <script>
  this.on('mount', function(){
    if ($('.textillate').length) {
      $('.textillate').textillate();
    }
  })

  slideTogglePull(e) {
    if(this.opts.observable){
      this.opts.observable.trigger('slideTogglePull');
      //$(e.target).toggleClass('active');
      // case of e.target occurs multi pattan, for example anchor or span
      // so specified by id.
      $('#nav-toggle').toggleClass('active');
    }
    return false;
  }
  </script>

</ctd-section-video>
