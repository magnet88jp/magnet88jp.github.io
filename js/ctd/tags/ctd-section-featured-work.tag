<ctd-section-featured-work>
  <div class="container-fluid">
    <div class="row">
      <ul class="grid">
        <li>
          <a data-target="con1" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/a.jpg" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>ワークスタイル選択制度</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a data-target="con2" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/b.jpg" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>書籍執筆</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a data-target="con3" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/c.jpg" alt="Calendar UI">
              <figcaption>
                <div class="caption-content">
                  <h1>社内勉強会</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a data-target="con4" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/d.jpg" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>服装・髪型自由</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
      </ul>
    </div>
    <div class="row">
      <ul class="grid">
        <li>
          <a data-target="con5" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/e.jpg" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>検証端末の充実</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a data-target="con6" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/f.jpg" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>MVP制度</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a data-target="con7" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/h.jpg" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>最新技術の導入</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
        <li>
          <a data-target="con8" class="modal-open">
            <figure>
              <img src="/img/icon_plus.png" alt="" class="on">
              <img src="/img/g.jpg" alt="">
              <figcaption>
                <div class="caption-content">
                  <h1>社内パーティー</h1>
                </div>
              </figcaption>
            </figure>
          </a>
        </li>
      </ul>
    </div>
  </div>


  <script>
  </script>

  <style scoped>
  a {
    display: block;
    cursor: pointer;
  }
  ul {
    margin: 0;
    padding: 0;
    width: 100%
  }
  ul li {
    float: left;
    min-height: 100%;
    width: 25%;
    background-color: #fff;
    list-style: none;
  }
  @media (max-width: 960px) {
    ul li {
      float: left;
      width: 50%;
      background-color: #fff;
      list-style: none;
    }
  }
  figure {
    position: relative;
    overflow: hidden;
  }
  figure img.on {
    position: absolute;
    top: 40%;
    left: 45%;
    width: 11%;
    height: 14%;
  }
  figure img {
    width: 100%;
    height: auto;
    -moz-transition: all 300ms ease-in-out;
    -o-transition: all 300ms ease-in-out;
    -webkit-transition: all 300ms ease-in-out;
    transition: all 300ms ease-in-out
  }
  figure:hover img, figure:focus img {
    -moz-transform: scale(1.1);
    -ms-transform: scale(1.1);
    -o-transform: scale(1.1);
    -webkit-transform: scale(1.1);
    transform: scale(1.1)
  }
  figcaption {
    position: absolute;
    top: 0;
    left: 0;
    padding: 25% 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 216, 0, 0.8);
    text-align: center;
    font-size: 15px;
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    -moz-transition: all 300ms ease-in-out;
    -o-transition: all 300ms ease-in-out;
    -webkit-transition: all 300ms ease-in-out;
    transition: all 300ms ease-in-out
  }
  figcaption a {
    color: #fff;
  }
  figcaption a:hover, figcaption a:focus {
    color: #fff
  }
  figure:hover figcaption, figure:focus figcaption {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
    will-change: transform;
  }
  figure.cs-hover figcaption {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1
  }
  figcaption h1 {
    font-size: 16px;
    color: #1c1c1c;
    text-transform: uppercase;
    font-weight: normal;
    font-family: "Open Sans", "Helvetica Neue", Helvetica, "Arial", "游ゴシック", YuGothic, "ヒラギノ角ゴ ProN W3", "Hiragino Kaku Gothic ProN", "メイリオ", Meiryo, sans-serif;
  }
  figcaption h1::after {
    content: " ";
    border: solid 2px #fff4c6;
    display: block;
    width: 35px;
    margin: 25px auto;
  }
  figcaption p {
    margin: 10px;
    color: #000;
    font-size: 16px;
    line-height: 25px
  }
  figcaption .caption-content {
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: -30px;
    margin-left: -150px;
    width: 300px;
    -moz-transform: translate(0, 15px);
    -ms-transform: translate(0, 15px);
    -o-transform: translate(0, 15px);
    -webkit-transform: translate(0, 15px);
    transform: translate(0, 15px);
    -moz-transition: all 300ms ease-in-out;
    -o-transition: all 300ms ease-in-out;
    -webkit-transition: all 300ms ease-in-out;
    transition: all 300ms ease-in-out;
  }
  figure:hover figcaption .caption-content, figure:focus figcaption .caption-content {
    -moz-transform: translate(0, 0);
    -ms-transform: translate(0, 0);
    -o-transform: translate(0, 0);
    -webkit-transform: translate(0, 0);
    transform: translate(0, 0);
  }
  span.icon {
    font-size: 6px;
    vertical-align: middle;
    margin: 0 5px
  }

  </style>
</ctd-section-featured-work>
