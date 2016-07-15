<ctd-header>
  <ctd-nav items={ items } init_hide={ init_nav_hide } observable={ observable }></ctd-nav>
  <ctd-section-video observable={ this.observable }></ctd-section-video>

  <style scoped>
  ctd-nav {
    display: block;
    background-color: #242830;
  }
  ctd-section-video {
    display: block;
    position: relative;
  }
  </style>

  <script>
    this.items = this.opts.items;
    this.init_nav_hide = this.opts.init_nav_hide;
    this.observable = riot.observable();
  </script>

</ctd-header>
