<ctd-div-center-block>
  <!--div class="center-block pc-img"-->
  <div class="img-holder" data-image="/img/service-bg.jpg" data-width="1440" data-height="835" data-extra-height="50"></div>
  <!--div class="center-block sp-img"-->
  <div><img class="img-responsive center-block" src="/img/service-bg.jpg" alt="" /></div>

  <script>
  this.on('mount', function(){
    if ($('.img-holder').length) {
      $('.img-holder').imageScroll();
    }
  }
  </script>

  <style scoped>
  </style>
</ctd-div-center-block>
