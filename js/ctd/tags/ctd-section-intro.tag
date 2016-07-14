<ctd-section-intro>
  <div class="container">
    <div class="row">
      <div class="col-xs-8 col-xs-offset-2">
        <h1 class="wp1 text-center mt0 animated fadeInLeft">{ title }</h1>
        <p><yield/></p>
      </div>
    </div>
  </div>

  <script>
    this.title = opts.title || 'no title';

    this.on('mount', function(){
      $('.wp1').waypoint(function(){
        $(this).addClass('animated fadeInLeft');
      }, {
        offset: 'bottom-in-view'
      });
    })
  </script>

  <style scoped>
  .mt0 {
    margin-top: 0 !important;
  }
  h1 {
    margin: 0.67em 0;
    color: #353535;
    font-size: 54px;
    padding: 0;
    font-family: 'Roboto', sans-serif;
  }
  h1::after {
    content: " ";
    border: solid 4px #f1c40f;
    display: block;
    width: 45px;
    margin: 25px auto;
  }
  .intro p {
    margin: 50px 0 0;
    line-height: 1.8;
  }
  h1 + p, .slides h2 + p {
    text-align: center;
  }
  p {
    color: #121212;
    word-spacing: 1px;
    line-height: 26px;
    font-size: 14px;
  }
  .fadeInLeft {
      -webkit-animation-name: fadeInLeft;
      animation-name: fadeInLeft;
  }
  .animated {
      -webkit-animation-duration: 1s;
      animation-duration: 1s;
      -webkit-animation-fill-mode: both;
      animation-fill-mode: both;
  }
  </style>
</ctd-section-intro>
