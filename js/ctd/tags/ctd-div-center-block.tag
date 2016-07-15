<ctd-div-center-block>
  <div if={ is_pc } class="center-block pc-img">
    <div class="img-holder" data-image="/img/service-bg.jpg" data-width="1440" data-height="835" data-extra-height="50"></div>
  </div>
  <div if={ !is_pc } class="center-block sp-img">
    <div><img class="img-responsive center-block" src="/img/service-bg.jpg" alt="" /></div>
  </div>

  <script>
  this.is_pc = (!navigator.userAgent.match(/(iPhone|iPad|Android)/)) ? true : false;
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
  </style>
</ctd-div-center-block>
