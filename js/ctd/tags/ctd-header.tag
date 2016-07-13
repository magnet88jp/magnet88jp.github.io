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
      observable: sharedObservable
    });
    riot.mount('ctd-section-video',{
      observable: sharedObservable
    });

    $('.pull').hide();
    /*
    $('#nav-toggle').click(function(){
      $('.pull').slideToggle();
      $(this).toggleClass('active');
      return false;
    });
    */
  })
  slideTogglePull() {
    console.log('ctd-header:slideTogglePull');
  }

  </script>

</ctd-header>
