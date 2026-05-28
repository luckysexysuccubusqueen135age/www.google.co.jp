<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="toolbar" content="true" />
    <meta name="maximize-window-fullscreen" content="true" />
    <meta name="full-color-rgb-ultra-hdr" content="true" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes" />

    <meta name="desktop-landscape" content="width=1500, height=900,  dpi=135" />
    <meta name="desktop-portrait"  content="width=900,  height=1500, dpi=135" />
    <meta name="mobile-landscape"  content="width=1500, height=900,  dpi=135" />
    <meta name="mobile-portrait"   content="width=900,  height=1500, dpi=135" />

    <title>GoldFireDragon UnCensored Browser</title>

    <meta name="geo.region"    content="JP" />
    <meta name="geo.country"   content="JP" />
    <meta name="geo.placename" content="Tokyo" />
    <meta name="HandheldFriendly" content="true" />
    <meta name="MobileOptimized"  content="true" />

    <meta name="description"        content="빠르고 안전한 프리미엄 브라우저 — GoldFireDragon UnCensored Browser" />
    <meta property="og:title"       content="GoldFireDragon UnCensored Browser" />
    <meta property="og:description" content="빠르고 안전한 프리미엄 브라우저" />
    <meta property="og:url"         content="https://www.onspace.ai" />
    <meta property="og:type"        content="website" />
    <meta property="og:site_name"   content="GoldFireDragon UnCensored Browser" />
    <meta property="og:image"       content="https://cdn-ai.onspace.ai/onspace/project/screenshot/online/pre-site/9bhrqx.jpg" />
    <meta name="twitter:card"        content="summary_large_image" />
    <meta name="twitter:title"       content="GoldFireDragon UnCensored Browser" />
    <meta name="twitter:description" content="빠르고 안전한 프리미엄 브라우저" />
    <meta name="twitter:image"       content="https://cdn-ai.onspace.ai/onspace/project/screenshot/online/pre-site/9bhrqx.jpg" />

    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: {
          extend: {
            fontFamily: {
              sans: ["'a큐티허니'"],
            }
          }
        }
      };
    </script>
    <link rel="stylesheet" href="file:///android_asset/fonts/gamefont.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />


    <style>
      @font-face {
        font-family: 'a큐티허니';
        src: url("file:///android_asset/fonts/a큐트허니.ttf") format('truetype'),
             url("file:///android_asset/fonts/a큐티허니.woff") format('woff');
        font-display: swap;
      }

      *, *::before, *::after { box-sizing: border-box; }

      html, body, *, *::before, *::after,
      input, textarea, select, button, a,
      input::placeholder, textarea::placeholder,
      input::-webkit-input-placeholder,
      textarea::-webkit-input-placeholder {
        font-family: 'a큐티허니' !important;
      }

      .IIV::-webkit-media-controls-play-button,
      video::-webkit-media-controls-play-button,
      video::-webkit-media-controls-start-playback-button {
        opacity: 0;
        pointer-events: none;
        width: 0;
        height: 0;
      }

      body {
        background: #0a0010
          url("https://cdn-ai.onspace.ai/onspace/project/uploads/6SC2bAVvqSFMEGrGCS7FCM/GoldFireDragonBrowser_home_page.jpg")
          center / cover no-repeat fixed;
        margin: 0;
        padding: 0;
        min-height: 100vh;
        color: #e9d5ff;
      }

      .search-bar {
        border: 1px solid rgba(192,132,252,0.6);
        border-radius: 9999px;
        background: rgba(12,4,28,0.82);
        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
        transition: box-shadow 0.25s, border-color 0.25s;
      }
      .search-bar:focus-within {
        border-color: #c084fc;
        box-shadow: 0 0 30px rgba(192,132,252,0.7);
      }

      #suggestions {
        background: rgba(12,4,28,0.95);
        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
        border: 1px solid rgba(192,132,252,0.4);
        border-top: none;
        border-radius: 0 0 1.5rem 1.5rem;
        overflow: hidden;
      }
      #suggestions li {
        padding: 10px 20px;
        cursor: pointer;
        color: #d8b4fe;
        font-size: 14px;
        display: flex;
        align-items: center;
        gap: 10px;
        transition: background 0.15s;
      }
      #suggestions li:hover { background: rgba(192,132,252,0.15); }

      #toggle-main-btn {
        width: 44px; height: 44px;
        background: rgba(12,4,28,0.95);
        border: 2px solid #c084fc;
        border-radius: 50%;
        font-size: 20px;
        cursor: pointer;
        transition: background 0.25s, transform 0.2s;
        display: flex; align-items: center; justify-content: center;
        flex-shrink: 0;
      }
      #toggle-main-btn:hover { background: #a855f7; transform: scale(1.12); }

      #main-content.is-hidden {
        visibility: hidden;
        opacity: 0;
        pointer-events: none;
      }
      #main-content { transition: opacity 0.25s, visibility 0.25s; }

      .japan-wifi {
        background: linear-gradient(90deg, #22c55e, #86efac);
        color: #052e16;
        padding: 4px 14px;
        border-radius: 9999px;
        font-size: 12px;
        font-weight: 900;
        box-shadow: 0 0 16px #22c55e88;
        pointer-events: none;
        white-space: nowrap;
        flex-shrink: 0;
      }

      #apps-popup {
        display: none;
        position: fixed;
        top: 60px; right: 16px;
        background: rgba(12,4,28,0.97);
        border: 1px solid rgba(192,132,252,0.4);
        border-radius: 16px;
        padding: 16px;
        z-index: 600;
        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
        width: 280px;
        box-shadow: 0 8px 40px rgba(0,0,0,0.6);
      }
      #apps-popup.open { display: block; }

      .app-grid { display: grid; grid-template-columns: repeat(3,1fr); gap: 8px; }
      .app-item {
        display: flex; flex-direction: column; align-items: center;
        gap: 4px; padding: 10px 6px; border-radius: 12px;
        color: #d8b4fe; font-size: 11px; text-decoration: none;
        transition: background 0.15s;
      }
      .app-item:hover { background: rgba(192,132,252,0.2); color: #fff; }
      .app-item i { font-size: 22px; }

      #voice-modal {
        display: none;
        position: fixed; inset: 0;
        background: rgba(0,0,0,0.75);
        z-index: 900;
        align-items: center; justify-content: center;
      }
      #voice-modal.open { display: flex; }

      .voice-ring {
        width: 100px; height: 100px;
        border-radius: 50%;
        background: rgba(192,132,252,0.15);
        border: 3px solid #c084fc;
        display: flex; align-items: center; justify-content: center;
        animation: pulse-ring 1.2s ease-in-out infinite;
        cursor: pointer;
      }
      .voice-ring.listening {
        background: rgba(192,132,252,0.3);
        box-shadow: 0 0 40px rgba(192,132,252,0.8);
      }
      @keyframes pulse-ring {
        0%,100% { transform: scale(1); }
        50%      { transform: scale(1.1); }
      }

      #proxy-modal {
        display: none;
        position: fixed; inset: 0;
        background: rgba(0,0,0,0.8);
        z-index: 900;
        align-items: center; justify-content: center;
      }
      #proxy-modal.open { display: flex; }

      .proxy-box {
        background: rgba(12,4,28,0.97);
        border: 1px solid rgba(192,132,252,0.4);
        border-radius: 24px;
        padding: 32px 24px;
        width: 320px;
        backdrop-filter: blur(24px);
        display: flex; flex-direction: column; gap: 12px;
      }
      .proxy-box input {
        background: rgba(255,255,255,0.07);
        border: 1px solid rgba(192,132,252,0.4);
        border-radius: 12px;
        padding: 10px 14px;
        color: #e9d5ff;
        font-size: 14px;
        outline: none;
        width: 100%;
      }
      .proxy-box input:focus { border-color: #c084fc; }

      @media (max-width: 640px) {
        .japan-wifi { font-size: 10px; padding: 3px 10px; }
      }

      /* ✅ a큐티허니 강제 단독 적용 */
      html, body, *, *::before, *::after {
      }
      input::placeholder,
      textarea::placeholder,
      input::-webkit-input-placeholder,
      textarea::-webkit-input-placeholder {
      }
    </style>
  </head>

  <body class="flex flex-col min-h-screen">

    <!-- VOICE MODAL -->
    <div id="voice-modal" role="dialog" aria-modal="true" aria-label="음성 검색">
      <div class="flex flex-col items-center gap-6 p-10 rounded-3xl"
           style="background:rgba(12,4,28,0.97);border:1px solid rgba(192,132,252,0.4);backdrop-filter:blur(24px);">
        <p id="voice-status" class="text-purple-300 text-base">마이크 버튼을 눌러세요</p>
        <button id="voice-start-btn" class="voice-ring" title="녹음 시작" aria-label="음성 입력 시작">
          <i class="fa-solid fa-microphone text-4xl text-purple-300"></i>
        </button>
        <p id="voice-interim" class="text-white text-sm min-h-[24px] text-center"></p>
        <button id="voice-close-btn" class="text-purple-400 hover:text-white text-sm underline transition">닫기</button>
      </div>
    </div>

    <!-- PROXY MODAL -->
    <div id="proxy-modal" role="dialog" aria-modal="true" aria-label="미러 사이트 열기">
      <div class="proxy-box">
        <p class="text-purple-300 font-bold text-base text-center">미러 사이트 열기</p>
        <p class="text-purple-400 text-xs text-center">CroxyProxy를 통해 URL을 우회합니다</p>
        <input id="proxy-input" type="url" placeholder="https://example.com" autocomplete="off" />
        <div class="flex gap-2 mt-1">
          <button id="proxy-go-btn"
                  class="flex-1 py-2 bg-purple-600 hover:bg-purple-700 rounded-xl text-sm font-semibold transition">
            열기
          </button>
          <button id="proxy-close-btn"
                  class="flex-1 py-2 bg-transparent border border-purple-500 hover:bg-purple-500/20 rounded-xl text-sm font-semibold transition text-purple-300">
            닫기
          </button>
        </div>
      </div>
    </div>

    <!-- TOP NAV -->
    <header class="flex justify-between items-center px-4 py-3 gap-2 z-50 flex-wrap"
            style="background:linear-gradient(to bottom,rgba(0,0,0,0.88),transparent)">
      <div class="japan-wifi" id="vpn-status-bar" onclick="openVpnModal()" style="cursor:pointer;">
        🇯🇵 VPN 항상켜짐 • 연결 중…
      </div>
      <div class="flex items-center gap-2 flex-wrap justify-end">
        <a href="https://mail.google.com"     target="_blank" rel="noopener"
           class="text-sm text-purple-300 hover:text-white px-2 py-1 rounded hover:bg-white/10 transition whitespace-nowrap">Gmail</a>
        <a href="https://images.google.co.jp" target="_blank" rel="noopener"
           class="text-sm text-purple-300 hover:text-white px-2 py-1 rounded hover:bg-white/10 transition whitespace-nowrap">이미지</a>
        <a href="https://news.google.com"     target="_blank" rel="noopener"
           class="text-sm text-purple-300 hover:text-white px-2 py-1 rounded hover:bg-white/10 transition whitespace-nowrap">뉴스</a>
        <a href="https://maps.google.co.jp"   target="_blank" rel="noopener"
           class="text-sm text-purple-300 hover:text-white px-2 py-1 rounded hover:bg-white/10 transition whitespace-nowrap">지도</a>
        <button id="apps-btn"
                class="w-10 h-10 flex items-center justify-center rounded-full hover:bg-white/10 transition"
                title="앱 목록">
          <i class="fa-solid fa-grip text-purple-300 text-lg"></i>
        </button>
        <button id="toggle-main-btn" title="검색창 숨기기 / 보이기">👁️</button>
        <img src="https://cdn-ai.onspace.ai/onspace/project/uploads/cNeEsZ2cuNyHxmYfJ3dhx6/GoldFireDragonBrowser_logo-removebg-preview.png"
             class="w-9 h-9 rounded-full cursor-pointer object-cover border-2 border-purple-500 hover:border-purple-300 transition"
             alt="FireDragon 계정" title="FireDragon 계정" loading="lazy" />
      </div>
    </header>

    <!-- APPS POPUP -->
    <div id="apps-popup" role="dialog" aria-label="앱 목록">
      <p class="text-purple-400 text-xs mb-3 font-semibold tracking-wide">빠른 링크</p>
      <div class="app-grid">
        <a href="https://mail.google.com"      target="_blank" rel="noopener" class="app-item"><i class="fa-solid fa-envelope"></i>Gmail</a>
        <a href="https://maps.google.co.jp"    target="_blank" rel="noopener" class="app-item"><i class="fa-solid fa-map-location-dot"></i>지도</a>
        <a href="https://www.youtube.com"      target="_blank" rel="noopener" class="app-item"><i class="fa-brands fa-youtube"></i>YouTube</a>
        <a href="https://news.google.com"      target="_blank" rel="noopener" class="app-item"><i class="fa-solid fa-newspaper"></i>뉴스</a>
        <a href="https://translate.google.com" target="_blank" rel="noopener" class="app-item"><i class="fa-solid fa-language"></i>번역</a>
        <a href="https://drive.google.com"     target="_blank" rel="noopener" class="app-item"><i class="fa-brands fa-google-drive"></i>드라이브</a>
        <a href="https://calendar.google.com"  target="_blank" rel="noopener" class="app-item"><i class="fa-solid fa-calendar-days"></i>캘린더</a>
        <a href="https://photos.google.com"    target="_blank" rel="noopener" class="app-item"><i class="fa-solid fa-images"></i>포토</a>
        <a href="https://meet.google.com"      target="_blank" rel="noopener" class="app-item"><i class="fa-solid fa-video"></i>Meet</a>
      </div>
    </div>


    <!-- VPN MODAL -->
    <div id="vpn-modal" role="dialog" aria-modal="true" aria-label="Japan VPN 연결"
         style="display:none;position:fixed;inset:0;z-index:9999;background:rgba(0,0,0,0.85);
                align-items:center;justify-content:center;flex-direction:column;">
      <div style="background:#1a0030;border:1px solid #7c3aed;border-radius:18px;
                  padding:28px 24px;width:92%;max-width:420px;max-height:80vh;overflow-y:auto;">
        <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:16px;">
          <span style="font-size:18px;font-weight:900;color:#e9d5ff;">🇯🇵 Japan VPN</span>
          <button onclick="closeVpnModal()"
                  style="background:none;border:none;color:#a78bfa;font-size:22px;cursor:pointer;">✕</button>
        </div>

        <div id="vpn-status-text"
             style="text-align:center;padding:10px;border-radius:10px;margin-bottom:16px;
                    background:rgba(124,58,237,0.15);color:#c4b5fd;font-size:13px;font-weight:600;">
          🟡 VPN 항상켜짐 모드 — 자동 연결 중…
        </div>

        <button id="vpn-toggle-btn" onclick="toggleVpn()"
                style="width:100%;padding:14px;border-radius:12px;border:none;cursor:pointer;
                       font-size:15px;font-weight:900;margin-bottom:20px;transition:all 0.2s;
                       background:#7c3aed;color:#fff;">
          🔌 VPN 연결
        </button>

        <div style="margin-bottom:10px;">
          <p style="color:#a78bfa;font-size:11px;font-weight:700;margin-bottom:10px;
                    letter-spacing:1px;">🌐 서버 선택 (자동 추천)</p>
          <div id="server-list" style="display:flex;flex-direction:column;gap:6px;"></div>
        </div>

        <p style="color:#6d28d9;font-size:10px;text-align:center;margin-top:14px;">
          🔒 VPN 항상켜짐 모드 활성화 • VPN은 자동으로 유지됩니다
        </p>
      </div>
    </div>

    <!-- MAIN CONTENT -->
    <main id="main-content" class="flex-1 flex flex-col items-center justify-center px-4 py-10">
      <div class="mb-8 text-center select-none">
        <img src="https://cdn-ai.onspace.ai/onspace/project/uploads/cNeEsZ2cuNyHxmYfJ3dhx6/GoldFireDragonBrowser_logo-removebg-preview.png"
             style="width:clamp(90px,16vw,160px)"
             class="mx-auto drop-shadow-lg" draggable="false" alt="FireDragon Logo" />
        <h1 class="text-4xl md:text-5xl font-black tracking-widest mt-5 text-white drop-shadow-lg">
          GoldFireDragon UnCensored Browser
        </h1>
        <p class="text-purple-300 text-sm mt-1">빠르고 안전한 프리미엄 브라우저</p>
      </div>

      <div class="w-full max-w-[680px] relative">
        <div class="search-bar flex items-center px-5 py-3">
          <i class="fa-solid fa-magnifying-glass text-lg text-purple-400 mr-4 flex-shrink-0"></i>
          <input id="search-input" type="text"
                 class="flex-1 bg-transparent outline-none text-base md:text-lg placeholder:text-purple-400 text-purple-100 min-w-0"
                 placeholder="검색어 또는 URL을 입력하세요"
                 autocomplete="off" aria-label="검색어 입력" />
          <button id="clear-btn"
                  class="hidden text-lg text-purple-300 hover:text-white mr-3 flex-shrink-0"
                  title="지우기" aria-label="검색어 지우기">✕</button>
          <button id="voice-btn"
                  class="text-lg text-purple-400 hover:text-white mr-3 flex-shrink-0 transition"
                  title="음성 검색" aria-label="음성 검색">
            <i class="fa-solid fa-microphone"></i>
          </button>
          <button id="lens-btn"
                  class="text-lg text-purple-400 hover:text-white flex-shrink-0 transition"
                  title="Google Lens 이미지 검색" aria-label="Google Lens">
            <i class="fa-solid fa-camera"></i>
          </button>
        </div>
        <ul id="suggestions" class="hidden absolute left-0 right-0 z-50" role="listbox"></ul>
      </div>

      <div class="flex justify-center gap-4 mt-6 flex-wrap">
        <button id="search-btn"
                class="px-8 py-3 bg-purple-600 hover:bg-purple-700 active:scale-95 rounded-xl text-sm font-semibold transition-all shadow-lg shadow-purple-900/50 focus:outline-none focus:ring-2 focus:ring-purple-400">
          GoldFireDragon 검색
        </button>
        <button id="lucky-btn"
                class="px-8 py-3 bg-transparent border border-purple-400 hover:bg-purple-500/20 active:scale-95 rounded-xl text-sm font-semibold transition-all focus:outline-none focus:ring-2 focus:ring-purple-400">
          I'm Feeling Lucky
        </button>
        <button id="mirror-btn"
                class="px-8 py-3 bg-transparent border border-purple-400 hover:bg-purple-500/20 active:scale-95 rounded-xl text-sm font-semibold transition-all focus:outline-none focus:ring-2 focus:ring-purple-400">
          🌐 미러 사이트 열기
        </button>
      </div>

      <nav class="mt-12 flex gap-5 flex-wrap justify-center" aria-label="빠른 링크">
        <a href="https://mail.google.com"      target="_blank" rel="noopener" class="flex flex-col items-center gap-2 text-purple-300 hover:text-white transition group">
          <div class="w-12 h-12 rounded-2xl bg-white/10 group-hover:bg-purple-600/40 flex items-center justify-center transition"><i class="fa-solid fa-envelope text-xl"></i></div>
          <span class="text-xs">Gmail</span>
        </a>
        <a href="https://maps.google.co.jp"    target="_blank" rel="noopener" class="flex flex-col items-center gap-2 text-purple-300 hover:text-white transition group">
          <div class="w-12 h-12 rounded-2xl bg-white/10 group-hover:bg-purple-600/40 flex items-center justify-center transition"><i class="fa-solid fa-map-location-dot text-xl"></i></div>
          <span class="text-xs">지도</span>
        </a>
        <a href="https://news.google.com"      target="_blank" rel="noopener" class="flex flex-col items-center gap-2 text-purple-300 hover:text-white transition group">
          <div class="w-12 h-12 rounded-2xl bg-white/10 group-hover:bg-purple-600/40 flex items-center justify-center transition"><i class="fa-solid fa-newspaper text-xl"></i></div>
          <span class="text-xs">뉴스</span>
        </a>
        <a href="https://www.youtube.com"      target="_blank" rel="noopener" class="flex flex-col items-center gap-2 text-purple-300 hover:text-white transition group">
          <div class="w-12 h-12 rounded-2xl bg-white/10 group-hover:bg-purple-600/40 flex items-center justify-center transition"><i class="fa-brands fa-youtube text-xl"></i></div>
          <span class="text-xs">YouTube</span>
        </a>
        <a href="https://translate.google.com" target="_blank" rel="noopener" class="flex flex-col items-center gap-2 text-purple-300 hover:text-white transition group">
          <div class="w-12 h-12 rounded-2xl bg-white/10 group-hover:bg-purple-600/40 flex items-center justify-center transition"><i class="fa-solid fa-language text-xl"></i></div>
          <span class="text-xs">번역</span>
        </a>
      </nav>
    </main>

    <!-- FOOTER -->
    <footer class="py-5 text-center text-xs text-purple-500 border-t border-purple-900/30"
            style="background:rgba(0,0,0,0.65)">
      <nav class="flex justify-center gap-6 mb-2" aria-label="하단 링크">
        <a href="#" class="hover:text-purple-300 transition">개인정보처리방침</a>
        <a href="#" class="hover:text-purple-300 transition">서비스 약관</a>
        <a href="#" class="hover:text-purple-300 transition">설정</a>
      </nav>
      <span>🇯🇵 일본 • FireDragon 135.0</span>
    </footer>

    <script>
      document.addEventListener('DOMContentLoaded', function () {

        var input           = document.getElementById('search-input');
        var clearBtn        = document.getElementById('clear-btn');
        var searchBtn       = document.getElementById('search-btn');
        var luckyBtn        = document.getElementById('lucky-btn');
        var mirrorBtn       = document.getElementById('mirror-btn');
        var toggleBtn       = document.getElementById('toggle-main-btn');
        var mainContent     = document.getElementById('main-content');
        var appsBtn         = document.getElementById('apps-btn');
        var appsPopup       = document.getElementById('apps-popup');
        var suggestionsList = document.getElementById('suggestions');

        var voiceModal    = document.getElementById('voice-modal');
        var voiceStartBtn = document.getElementById('voice-start-btn');
        var voiceCloseBtn = document.getElementById('voice-close-btn');
        var voiceStatus   = document.getElementById('voice-status');
        var voiceInterim  = document.getElementById('voice-interim');
        var voiceBtn      = document.getElementById('voice-btn');
        var lensBtn       = document.getElementById('lens-btn');

        var proxyModal    = document.getElementById('proxy-modal');
        var proxyInput    = document.getElementById('proxy-input');
        var proxyGoBtn    = document.getElementById('proxy-go-btn');
        var proxyCloseBtn = document.getElementById('proxy-close-btn');

        var isHidden = false;

        /* ── 토글 ── */
        toggleBtn.addEventListener('click', function () {
          isHidden = !isHidden;
          mainContent.classList.toggle('is-hidden', isHidden);
          toggleBtn.textContent = isHidden ? '🔄' : '👁️';
        });

        /* ── Apps popup ── */
        appsBtn.addEventListener('click', function (e) {
          e.stopPropagation();
          appsPopup.classList.toggle('open');
        });
        document.addEventListener('click', function () {
          appsPopup.classList.remove('open');
        });
        appsPopup.addEventListener('click', function (e) { e.stopPropagation(); });

        /* ── 검색 실행 ── */
        function openSearch(query, lucky) {
          query = (query || '').trim();
          if (!query) { input.focus(); return; }

          var isURL = /^https?:\/\//i.test(query) ||
                      /^[a-zA-Z0-9-]+\.[a-zA-Z]{2,}(\/.*)?$/.test(query);
          if (isURL) {
            var url = /^https?:\/\//i.test(query) ? query : 'https://' + query;
            window.open(url, '_blank', 'noopener');
            return;
          }

          var params = new URLSearchParams({
            q: query, gl: 'jp', hl: 'ko',
            safe: 'off', nfpr: '1', filter: '0', pws: '0'
          });
          if (lucky) params.set('btnI', '1');
          window.open('https://www.google.co.jp/search?' + params.toString(), '_blank', 'noopener');
        }

        searchBtn.addEventListener('click', function () { openSearch(input.value, false); });
        luckyBtn.addEventListener('click',  function () { openSearch(input.value, true); });

        input.addEventListener('keydown', function (e) {
          if (e.key === 'Enter')  { openSearch(input.value, false); hideSuggestions(); }
          if (e.key === 'Escape') { hideSuggestions(); }
        });

        /* ── 미러 사이트 버튼 ── */
        mirrorBtn.addEventListener('click', function () {
          window.open('https://www.croxyproxy.com/_ko/', '_blank', 'noopener');
        });

        /* ── Proxy 모달 ── */
        proxyGoBtn.addEventListener('click', function () {
          var url = proxyInput.value.trim();
          if (!url) { proxyInput.focus(); return; }
          if (!/^https?:\/\//i.test(url)) url = 'https://' + url;
          window.open(
            'https://www.croxyproxy.com/requests/post?url=' + encodeURIComponent(url),
            '_blank', 'noopener'
          );
          proxyModal.classList.remove('open');
        });
        proxyInput.addEventListener('keydown', function (e) {
          if (e.key === 'Enter')  proxyGoBtn.click();
          if (e.key === 'Escape') proxyModal.classList.remove('open');
        });
        proxyCloseBtn.addEventListener('click', function () { proxyModal.classList.remove('open'); });
        proxyModal.addEventListener('click', function (e) {
          if (e.target === proxyModal) proxyModal.classList.remove('open');
        });

        /* ── Google Lens ── */
        lensBtn.addEventListener('click', function () {
          window.open('https://lens.google.com', '_blank', 'noopener');
        });

        /* ── 음성 검색 ── */
        var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
        var recognition = null;

        if (SpeechRecognition) {
          recognition = new SpeechRecognition();
          recognition.lang = 'ko-KR';
          recognition.interimResults = true;
          recognition.maxAlternatives = 1;

          recognition.onstart = function () {
            voiceStatus.textContent = '듣고 있습니다…';
            voiceStartBtn.classList.add('listening');
          };
          recognition.onresult = function (e) {
            var transcript = '';
            for (var i = e.resultIndex; i < e.results.length; i++) {
              transcript += e.results[i][0].transcript;
            }
            voiceInterim.textContent = transcript;
            if (e.results[e.results.length - 1].isFinal) {
              input.value = transcript;
              clearBtn.classList.remove('hidden');
              closeVoiceModal();
              openSearch(transcript, false);
            }
          };
          recognition.onerror = function (e) {
            voiceStatus.textContent = '오류: ' +
              (e.error === 'not-allowed' ? '마이크 권한을 허용해주세요' : e.error);
            voiceStartBtn.classList.remove('listening');
          };
          recognition.onend = function () {
            voiceStartBtn.classList.remove('listening');
            if (voiceModal.classList.contains('open')) {
              voiceStatus.textContent = '다시 누르면 재시도합니다';
            }
          };
        } else {
          voiceBtn.title = '이 브라우저는 음성 인식을 지원하지 않습니다';
          voiceBtn.style.opacity = '0.4';
          voiceBtn.style.cursor = 'not-allowed';
        }

        voiceBtn.addEventListener('click', function () {
          if (!recognition) return;
          openVoiceModal();
        });
        voiceStartBtn.addEventListener('click', function () {
          if (!recognition) return;
          voiceInterim.textContent = '';
          voiceStatus.textContent = '듣고 있습니다…';
          try { recognition.start(); } catch (e) {}
        });
        voiceCloseBtn.addEventListener('click', closeVoiceModal);
        voiceModal.addEventListener('click', function (e) {
          if (e.target === voiceModal) closeVoiceModal();
        });
        document.addEventListener('keydown', function (e) {
          if (e.key === 'Escape' && voiceModal.classList.contains('open')) closeVoiceModal();
        });

        function openVoiceModal() {
          voiceInterim.textContent = '';
          voiceStatus.textContent = '마이크 버튼을 눌러세요';
          voiceModal.classList.add('open');
        }
        function closeVoiceModal() {
          if (recognition) { try { recognition.stop(); } catch (e) {} }
          voiceModal.classList.remove('open');
          voiceStartBtn.classList.remove('listening');
        }

        /* ── Clear button ── */
        input.addEventListener('input', function () {
          clearBtn.classList.toggle('hidden', !input.value);
          if (input.value.length >= 2) fetchSuggestions(input.value);
          else hideSuggestions();
        });
        clearBtn.addEventListener('click', function () {
          input.value = '';
          clearBtn.classList.add('hidden');
          hideSuggestions();
          input.focus();
        });

        /* ── Autocomplete (JSONP) ── */
        var suggestTimer  = null;
        var suggestSerial = 0;

        function fetchSuggestions(query) {
          clearTimeout(suggestTimer);
          suggestTimer = setTimeout(function () {
            var serial   = ++suggestSerial;
            var cbName   = '__fdSuggest_' + serial;
            var scriptEl = document.createElement('script');
            scriptEl.id  = 'suggest-script-' + serial;

            window[cbName] = function (data) {
              var el = document.getElementById('suggest-script-' + serial);
              if (el) el.remove();
              delete window[cbName];
              if (serial !== suggestSerial) return;
              renderSuggestions(Array.isArray(data[1]) ? data[1] : []);
            };
            scriptEl.onerror = function () {
              var el = document.getElementById('suggest-script-' + serial);
              if (el) el.remove();
              delete window[cbName];
            };
            scriptEl.src =
              'https://suggestqueries.google.com/complete/search?client=chrome&q=' +
              encodeURIComponent(query) + '&callback=' + cbName;
            document.body.appendChild(scriptEl);
          }, 220);
        }

        function renderSuggestions(items) {
          if (!items.length) { hideSuggestions(); return; }
          suggestionsList.innerHTML = '';
          items.slice(0, 6).forEach(function (text) {
            var li = document.createElement('li');
            li.setAttribute('role', 'option');
            li.innerHTML =
              '<i class="fa-solid fa-magnifying-glass text-purple-500"></i><span>' +
              escapeHTML(text) + '</span>';
            li.addEventListener('mousedown', function (e) {
              e.preventDefault();
              input.value = text;
              clearBtn.classList.remove('hidden');
              hideSuggestions();
              openSearch(text, false);
            });
            suggestionsList.appendChild(li);
          });
          suggestionsList.classList.remove('hidden');
        }

        function hideSuggestions() {
          suggestionsList.classList.add('hidden');
          suggestionsList.innerHTML = '';
        }

        function escapeHTML(str) {
          return str
            .replace(/&/g,  '&amp;')
            .replace(/</g,  '&lt;')
            .replace(/>/g,  '&gt;')
            .replace(/"/g,  '&quot;');
        }

        document.addEventListener('click', function (e) {
          if (!input.contains(e.target) && !suggestionsList.contains(e.target)) {
            hideSuggestions();
          }
        });

        /* ── 첫 탭 시 풀스크린 ── */
        document.addEventListener('click', function triggerFS() {
          var el = document.documentElement;
          if (el.requestFullscreen)            el.requestFullscreen();
          else if (el.webkitRequestFullscreen) el.webkitRequestFullscreen();
        }, { once: true });


        /* ══ VPN 서버 목록 ══ */
        var VPN_SERVERS = [
          { name: "IPS Tokyo-1 (TCP 443)",  file: "Japan/IPS_219.100.37.170_tcp_443.ovpn",  proto: "TCP" },
          { name: "IPS Tokyo-2 (TCP 443)",  file: "Japan/IPS_219.100.37.186_tcp_443.ovpn",  proto: "TCP" },
          { name: "IPS Tokyo-3 (TCP 443)",  file: "Japan/IPS_219.100.37.85_tcp_443.ovpn",   proto: "TCP" },
          { name: "IPS Tokyo-4 (UDP 1195)", file: "Japan/IPS_219.100.37.170_udp_1195.ovpn", proto: "UDP" },
          { name: "IPS Tokyo-5 (UDP 1195)", file: "Japan/IPS_219.100.37.85_udp_1195.ovpn",  proto: "UDP" },
          { name: "FOV Tokyo (TCP)",        file: "Japan/FOV_Japan_219.100.37.170_tcp.ovpn", proto: "TCP" },
          { name: "FOV Tokyo (UDP)",        file: "Japan/FOV_Japan_219.100.37.170_udp.ovpn", proto: "UDP" },
          { name: "IPS Osaka (TCP 1194)",   file: "Japan/IPS_1.66.34.131_tcp_1194.ovpn",    proto: "TCP" },
          { name: "IPS Osaka (UDP 1194)",   file: "Japan/IPS_1.66.34.131_udp_1194.ovpn",    proto: "UDP" },
          { name: "IPS Saitama (TCP)",      file: "Japan/IPS_126.203.155.175_tcp_1224.ovpn", proto: "TCP" },
        ];

        var selectedServer = VPN_SERVERS[0];
        var vpnConnected   = false;

        function openVpnModal() {
          renderServerList();
          updateVpnStatusUI(window.jpvpn_ch ? window.jpvpn_ch.getVpnStatus() : 'disconnected');
          document.getElementById('vpn-modal').style.display = 'flex';
        }
        function closeVpnModal() {
          document.getElementById('vpn-modal').style.display = 'none';
        }

        function renderServerList() {
          var list = document.getElementById('server-list');
          list.innerHTML = '';
          VPN_SERVERS.forEach(function(srv, idx) {
            var btn = document.createElement('button');
            btn.textContent = (idx === 0 ? '⭐ ' : '') + srv.name;
            btn.setAttribute('data-idx', idx);
            btn.style.cssText = 'width:100%;text-align:left;padding:10px 14px;border-radius:9px;' +
              'border:1px solid ' + (srv === selectedServer ? '#7c3aed' : '#3b1f6e') + ';' +
              'background:' + (srv === selectedServer ? 'rgba(124,58,237,0.25)' : 'rgba(30,0,60,0.5)') + ';' +
              'color:#c4b5fd;font-size:12px;cursor:pointer;font-family:inherit;transition:all 0.15s;';
            btn.addEventListener('click', function() {
              selectedServer = VPN_SERVERS[parseInt(this.getAttribute('data-idx'))];
              renderServerList();
            });
            list.appendChild(btn);
          });
        }

        function toggleVpn() {
          var status = window.jpvpn_ch ? window.jpvpn_ch.getVpnStatus() : 'disconnected';
          if (status === 'connected') {
            disconnectVpn();
          } else {
            connectVpn();
          }
        }

        function connectVpn() {
          if (!window.jpvpn_ch) {
            updateVpnStatusUI('error');
            return;
          }
          updateVpnStatusUI('connecting');
          try {
            var ovpnPath = 'file:///android_asset/' + selectedServer.file;
            try {
              window.jpvpn_ch.connectVpn(ovpnPath, selectedServer.name);
            } catch(e2) {
              window.jpvpn_ch.connectVpn(ovpnPath);
            }
          } catch(e) {
            updateVpnStatusUI('error');
          }
        }

        function disconnectVpn() {
          if (window.jpvpn_ch) {
            window.jpvpn_ch.disconnectVpn();
          }
          updateVpnStatusUI('disconnected');
        }

        function updateVpnStatusUI(status) {
          var statusBar  = document.getElementById('vpn-status-bar');
          var statusText = document.getElementById('vpn-status-text');
          var toggleBtn  = document.getElementById('vpn-toggle-btn');
          if (!statusText) return;

          if (status === 'connected') {
            statusBar.textContent  = '🇯🇵 VPN 연결됨 • ' + selectedServer.name;
            statusBar.style.color  = '#4ade80';
            statusText.textContent = '🟢 VPN 연결됨 — ' + selectedServer.name;
            statusText.style.color = '#4ade80';
            toggleBtn.textContent  = '🔴 VPN 끊기';
            toggleBtn.style.background = '#dc2626';
          } else if (status === 'connecting') {
            statusBar.textContent  = '🇯🇵 VPN 연결 중…';
            statusBar.style.color  = '#fbbf24';
            statusText.textContent = '🟡 연결 중… 잠시만 기다려주세요';
            statusText.style.color = '#fbbf24';
            toggleBtn.textContent  = '⏳ 연결 중…';
            toggleBtn.disabled     = true;
            toggleBtn.style.background = '#78350f';
          } else if (status === 'error') {
            statusBar.textContent  = '🇯🇵 VPN 오류 • 다시 시도';
            statusBar.style.color  = '#f87171';
            statusText.textContent = '🔴 연결 실패 — 다른 서버를 선택해보세요';
            statusText.style.color = '#f87171';
            toggleBtn.textContent  = '🔒 VPN 항상켜짐 (자동연결)';
            toggleBtn.disabled     = false;
            toggleBtn.style.background = '#7c3aed';
          } else {
            statusBar.textContent  = '🇯🇵 VPN 항상켜짐 • 연결 중…';
            statusBar.style.color  = '';
            statusText.textContent = '🟡 VPN 항상켜짐 모드 — 자동 연결 중…';
            statusText.style.color = '#c4b5fd';
            toggleBtn.textContent  = '🔒 VPN 항상켜짐 (자동연결)';
            toggleBtn.disabled     = false;
            toggleBtn.style.background = '#7c3aed';
          }
        }

        /* VPN 상태 브로드캐스트 수신 (Native→JS) */
        window.onVpnStatusChanged = function(status) {
          updateVpnStatusUI(status);
        };

        /* 주기적 상태 체크 (3초) */
        setInterval(function() {
          if (window.jpvpn_ch) {
            var s = window.jpvpn_ch.getVpnStatus();
            updateVpnStatusUI(s);
          }
        }, 3000);
        /* ══ VPN 항상켜짐 모드: 자동 연결 및 자동 재연결 ══ */
        function autoConnectVpn() {
          if (!window.jpvpn_ch) return;
          var s = window.jpvpn_ch.getVpnStatus();
          if (s !== 'connected' && s !== 'connecting') {
            updateVpnStatusUI('connecting');
            try {
              var ovpnPath = 'file:///android_asset/' + selectedServer.file;
              try {
                window.jpvpn_ch.connectVpn(ovpnPath, selectedServer.name);
              } catch(e2) {
                window.jpvpn_ch.connectVpn(ovpnPath);
              }
            } catch(e) {
              updateVpnStatusUI('error');
            }
          }
        }

        /* 앱 로드 즉시 상태 확인 후 자동연결 */
        setTimeout(function() {
          if (window.jpvpn_ch) {
            var initStatus = window.jpvpn_ch.getVpnStatus();
            updateVpnStatusUI(initStatus);
            if (initStatus !== 'connected' && initStatus !== 'connecting') {
              autoConnectVpn();
            }
          }
        }, 800);

        /* 5초마다 자동 재연결 감시 (항상켜짐 보장) */
        setInterval(function() {
          if (window.jpvpn_ch) {
            var s = window.jpvpn_ch.getVpnStatus();
            updateVpnStatusUI(s);
            /* disconnected 또는 error 상태면 즉시 재연결 */
            if (s === 'disconnected' || s === 'error') {
              autoConnectVpn();
            }
          }
        }, 5000);


        /* ── 자동 포커스 ── */
        input.focus();

        /* ── appLoadFinished ── */
        if (!document.getElementById('appLoadFinished')) {
          var d = document.createElement('div');
          d.id = 'appLoadFinished';
          d.style.display = 'none';
          document.body.appendChild(d);
        }

        /* ✅ JS로 모든 DOM 요소에 a큐티허니 폰트 강제 적용 */
        function applyFont() {
          var all = document.querySelectorAll('*');
          for (var i = 0; i < all.length; i++) {
            all[i].style.setProperty('font-family', "'a큐티허니'", 'important');
          }
        }
        applyFont();

        /* 동적으로 추가되는 요소도 감지해서 폰트 적용 */
        var fontObserver = new MutationObserver(function(mutations) {
          mutations.forEach(function(m) {
            m.addedNodes.forEach(function(node) {
              if (node.nodeType === 1) {
                node.style.setProperty('font-family', "'a큐티허니'", 'important');
                var children = node.querySelectorAll('*');
                for (var i = 0; i < children.length; i++) {
                  children[i].style.setProperty('font-family', "'a큐티허니'", 'important');
                }
              }
            });
          });
        });
        fontObserver.observe(document.body, { childList: true, subtree: true });
      });
    </script>
  </body>
</html>



