<bootstrap-carousel>

  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel"
    data-interval={ this.interval } data-pause={ this.pause }
    data-wrap={ this.wrap } data-keyboard={ this.keyboard }>
      <!-- Indicators -->
      <ol class="carousel-indicators">
          <li each={ this.items } data-target="#carousel-example-generic" data-slide-to={ index } class={ active: index==0 }></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
          <div each={ this.items } class={ item: true, active: index==0 }>
              <img src={ src } alt={ caption }>
              <div class="carousel-caption">
                  <h2>{ caption }</h2>
              </div>
          </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="fa fa-angle-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="fa fa-angle-right"></span>
      </a>
  </div>

  <style scoped>
    .carousel-inner > .item {
      text-align: center;
    }
    .carousel-inner > .item > img {
      display: inline;
    }
    .carousel-inner .carousel-caption h2 {
      color: rgba(0,0,0,0.6);
      font-size: 40px;
      text-shadow: 0px 0px 5px rgba(255, 255, 255, 0.6),
                   0px 0px 10px rgba(255, 255, 255, 0.6);
    }
    .carousel-indicators li {
      background-color: rgba(0,0,0,0.4);
      box-shadow: 0 0 5px rgba(0,0,0,0.6);
      border-color: rgba(255,255,255,0.8);
      margin-left: 6px;
      margin-right: 6px;
    }
    .carousel-indicators li.active {
      border-color: rgba(255,255,255,0.8);
      background-color: rgba(255,255,255,0.8);
      margin-left: 6px;
      margin-right: 6px;
    }
    img {
      opacity: 0.8;
    }
  </style>

  <script type="coffee">
    @on 'update', ->
      @interval = opts.interval ? 5000
      @pause    = opts.pause    ? "hover"
      @wrap     = opts.wrap     ? true
      @keyboard = opts.keyboard ? true

      @items = for img, i in $(@root._innerHTML) when img.tagName == 'IMG'
        caption: img.alt
        src:     img.src
        index:   i
  </script>
</bootstrap-carousel>
