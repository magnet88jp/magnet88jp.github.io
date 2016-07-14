<ctd-header>
  <ctd-nav></ctd-nav>
  <ctd-section-video></ctd-section-video>

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
  this.on('mount', function(){
    var sharedObservable = riot.observable();
    riot.mount('ctd-nav', {
      items: [
        { href:"index.html",  title: "ホーム"},
        { href:"company/index.html",  title: "会社概要"},
        { href:"solution/index.html",  title: "ソリューション"},
        { href:"recruit/index.html",  title: "採用情報"},
        { href:"news/index.html",  title: "ニュース"},
        { href:"news/index.html",  title: "お問い合わせ",  target: "_blank"}
      ],
      observable: sharedObservable,
      initHide: true
    });
    riot.mount('ctd-section-video',{
      observable: sharedObservable
    });

    //$('.pull').hide();
  })

  </script>

</ctd-header>
