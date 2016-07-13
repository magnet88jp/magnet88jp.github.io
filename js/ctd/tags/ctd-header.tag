<ctd-header>
  <ctd-nav></ctd-nav>
  <ctd-section-video></ctd-section-video>

  <style scoped>
  ctd-section-video {
    width: 100%;
    height: 640px;
  }
  </style>

  <script>
  this.on('mount', function(){
    riot.mount('ctd-nav', {
      items: [
        { href:"index.html",  title: "ホーム"},
        { href:"company/index.html",  title: "会社概要"},
        { href:"solution/index.html",  title: "ソリューション"},
        { href:"recruit/index.html",  title: "採用情報"},
        { href:"news/index.html",  title: "ニュース"},
        { href:"news/index.html",  title: "お問い合わせ",  target: "_blank"}
      ]
    });
  })
  </script>

</ctd-header>
