<ctd-section-video>

  <div class="container-fluid">
    <div class="row kv-sp">
      <video autoplay loop poster="/img/kv_sp.png">
        <source src="/movie/craft_movie01.mp4" type="video/mp4">
        <img src="/img/kv_sp.png" alt="">
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
  .key-visual {
    font-size: 100px;
    font-family: 'Roboto', sans-serif;
    color: #fff;
    padding: 110px 7% 0;
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
  .logoarea {
    margin-top: 20px;
    padding-left: 10%;
  }
  </style>

  <script type="coffee">
  </script>

</ctd-section-video>
