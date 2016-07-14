<ctd-nav>
  <div class="container-fluid">
    <div class="row">
      <div class="col-xs-8 col-xs-offset-2">
        <nav class="pull">
          <ul class="top-nav">
            <li each={ this.items } >
              <a href={ href } target={ target }>{ title }<span class="indicator"><i class="fa fa-angle-right"></i></span></a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>

  <style scoped>
  dl, menu, ol, ul {
    margin: 1em 0;
  }
  div.container-fluid {
    font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, "游ゴシック", YuGothic, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
  }
  nav {
    background-color: #242830;
    margin-top: -1px;
  }
  nav ul {
      list-style: none;
      padding: 0;
  }
  nav ul li {
      color: rgba(255, 255, 255, 0.6);
      display: block;
      border-bottom: 1px dotted rgba(255, 255, 255, 0.2);
      transition: all 0.5s ease;
      -moz-transition: all 0.5s ease;
      -webkit-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      padding-left: 0;
      position: relative;
  }
  nav ul li:last-child {
    border: none;
  }
  nav ul li a {
    color: rgba(255, 255, 255, 0.8);
    display: block;
    padding: 20px;
    transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -webkit-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    padding-left: 0;
    position: relative;
    text-decoration: none;
  }
  nav ul li a:hover, nav ul li a:focus {
      text-decoration: none;
      color: rgba(255, 255, 255, 1);
  }
  .fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
  }
  .indicator {
    position: absolute;
    right: 0 !important;
  }
  </style>

  <script>
    this.items = this.opts.items;
//    var selfObservable = this.opts.observable;
    this.init_hide = this.opts.init_hide;
    var self = this;
    this.on('mount', function(){
      if(self.init_hide) {
        $('.pull').hide();
      }

      if(opts.observable){
//      if(selfObservable){
        opts.observable.on('slideTogglePull', function() {
//        selfObservable.on('slideTogglePull', function() {
          $('.pull').slideToggle();
        });
      }
    });
  </script>

</ctd-nav>
