<ctd-nav>
  <div class="container-fluid">
    <div class="row">
      <div class="col-xs-8 col-xs-offset-2">
        <nav class="pull">
          <ul class="top-nav">
            <li each={ this.items } >
              <a href={ href }>{ title }<span class="indicator"><i class="fa fa-angle-right"></i></span></a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>

  <style scoped>
  </style>

  <script type="coffee">
    @items = for anchor, i in $(@root._innerHTML) when anchor.tagName == 'A'
      href : anchor.href
      title : JSON.stringify(anchor.href)
      index : i
  </script>

</ctd-nav>
