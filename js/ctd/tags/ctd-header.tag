<ctd-header>
  <ctd-nav></ctd-nav>
  <ctd-section-video></ctd-section-video>

  <style scoped>
  ctd-nav {
    display: block;
  }
  ctd-section-video {
    display: block;
/*    width: 100%;
    height: 640px;
    position: relative;
    overflow: hidden;*/
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
    riot.mount('ctd-section-video');

    $('#nav-toggle').click(function(){
      $('.pull').slideToggle();
      $(this).toggleClass('active');
      return false;
    });

  })
  </script>

</ctd-header>
