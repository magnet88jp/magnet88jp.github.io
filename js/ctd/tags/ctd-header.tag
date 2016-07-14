<ctd-header>
  <ctd-nav items={ this.items } inithide={ this.inithide } observable={ this.observable }></ctd-nav>
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
  this.items = [
    { href:"index.html",  title: "ホーム"},
    { href:"company/index.html",  title: "会社概要"},
    { href:"solution/index.html",  title: "ソリューション"},
    { href:"recruit/index.html",  title: "採用情報"},
    { href:"news/index.html",  title: "ニュース"},
    { href:"news/index.html",  title: "お問い合わせ",  target: "_blank"}
  ];
  this.inithide = false;
  var sharedObservable = riot.observable();
  this.observable = sharedObservable;
  </script>

</ctd-header>
