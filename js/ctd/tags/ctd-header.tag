<ctd-header>
  <ctd-nav items={ items } init_hide={ init_nav_hide } observable={ observable }></ctd-nav>
  <ctd-section-video observable={ observable }></ctd-section-video>

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
    this.items = this.opts.items || [
      { href:"index.html",  title: "ホーム"},
      { href:"company/index.html",  title: "会社概要"},
      { href:"solution/index.html",  title: "ソリューション"},
      { href:"recruit/index.html",  title: "採用情報"},
      { href:"news/index.html",  title: "ニュース"},
      { href:"https://www.netyear.net/craft/forms/inquiry/",  title: "お問い合わせ",  target: "_blank"}
    ];
    this.init_nav_hide = this.opts.init_nav_hide;
    this.observable = riot.observable();
  </script>

</ctd-header>
