
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
  div.container-fluid {
      background-color: rgb(255, 255, 255);
      color: rgb(18, 18, 18);
      font-weight: normal;
      line-height: 1.5;
      min-width: 320px;
      font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, "游ゴシック", YuGothic, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
      margin: 0px;
      font-size: 14px;
  }
  a {
      color: #353535;
      -webkit-transition: all 0.5s;
      -moz-transition: all 0.5s;
      -o-transition: all 0.5s;
      transition: all 0.5s;
      text-decoration: none;
  }
  a:hover, a:focus {
      color: #f1c40f;
      text-decoration: none;
      outline: none;
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

    var buf = [];
    var i = 0;
    $(this.root._innerHTML).each(function(){
      var $anchor = $(this);
      if($anchor.prop('tagName') == 'A') {
        buf.push({
          href: anchor.href,
          title: anchor.innerHTML,
          target: anchor.target,
          index: i
        });
        i++;
      }

    });

    this.items = buf;
  </script>

</ctd-nav>
