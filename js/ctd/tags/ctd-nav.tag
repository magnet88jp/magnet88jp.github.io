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
  nav {
    background-color: #242830;
    margin-top: -1px;
  }
  nav ul li {
      color: rgba(255, 255, 255, 0.6);
      display: block;
      border-bottom: 1px dotted rgba(255, 255, 255, 0.2);
      -moz-transition: all 0.5s ease;
      -webkit-transition: all 0.5s ease;
      -o-transition: all 0.5s ease;
      padding-left: 0;
      position: relative;
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
