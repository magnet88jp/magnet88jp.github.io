
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
  nav {
    background-color: #242830;
    margin-top: -1px;
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
  a:hover, a:focus {
      color: #f1c40f;
      text-decoration: none;
      outline: none;
  }
  nav ul li a:hover, nav ul li a:focus {
      text-decoration: none;
      color: rgba(255, 255, 255, 1);
  }
  </style>

  <script type="coffee">
    @items = for anchor, i in $(@root._innerHTML) when anchor.tagName == 'A'
      href: anchor.href
      title: anchor.innerHTML
      target: anchor.target
      index: i
  </script>

</ctd-nav>
