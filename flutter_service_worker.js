'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"index.html": "8298b162e5b1512924314f409d21a593",
"/": "8298b162e5b1512924314f409d21a593",
"assets/AssetManifest.bin": "7cd211ce617d0ecbefb621075f712d4a",
"assets/fonts/MaterialIcons-Regular.otf": "6d39c05f0f1d713e685ca0b66a9894d5",
"assets/assets/fonts/RobotoMono-Bold.ttf": "0339b745f10bb01da181af1cdc33c361",
"assets/assets/fonts/RobotoMono-SemiBold.ttf": "e9372f334303337690d46c5a169f3b10",
"assets/assets/fonts/RobotoMono-Medium.ttf": "b090e3202375adb631519fab6bf121c2",
"assets/assets/fonts/RobotoMono-Italic.ttf": "9eb6854ad766566c29d1bb5711504345",
"assets/assets/fonts/RobotoMono-ExtraLight.ttf": "b8b8a584a0b8307e1aa11f9f037a0502",
"assets/assets/fonts/RobotoMono-Regular.ttf": "7e173cf37bb8221ac504ceab2acfb195",
"assets/assets/fonts/RobotoMono-Light.ttf": "14fa2a726b29e8805e287c002ab64397",
"assets/assets/image/stack.svg": "b97977808ed575ed12adedb25bd1bd7b",
"assets/assets/image/flutter.svg": "faf8f499559f6b2f815f454a5794eae3",
"assets/assets/image/oreno_foto_compressed.jpg": "42e07da55fbec27f6b9ebf67e0676142",
"assets/assets/image/instagram_icon.svg": "622e2947df6ed5a12b06a6ea7cb70777",
"assets/assets/image/job.svg": "5bf398bb48b80440af72944fefe094dd",
"assets/assets/image/gmail_icon.svg": "d0915bc3877280aee83c4d1cd3bc3856",
"assets/assets/image/oreno_foto.jpg": "ff573a47fec2ed02b64cc7eb7e456723",
"assets/assets/image/discord_icon.svg": "cc8afd293890f2369c388347b1f897b9",
"assets/assets/image/oreno_foto_no_bg.png": "5bc86ae9f98c17becf5706a269d5d577",
"assets/assets/image/inkare_last_work/charge_ion_3.jpg": "083f304271a5cd9d13093afb00ad1600",
"assets/assets/image/inkare_last_work/khudi_app_ex_3.jpeg": "8c2c56236a3ed89956ddfe6e7f90b553",
"assets/assets/image/inkare_last_work/charge_ion_0.jpg": "260b1776742261de3312843b582d998c",
"assets/assets/image/inkare_last_work/nusa_ritel_ex_1.jpeg": "884cce8f4560b61f6d83ca3d5ba59416",
"assets/assets/image/inkare_last_work/fds_mobile_ex_0.jpeg": "877c9fe69201af122f998a7a78cba669",
"assets/assets/image/inkare_last_work/khudi_app_ex_2.jpeg": "25a9abb96ffa88b1a7ee09351203071a",
"assets/assets/image/inkare_last_work/charge_ion_2.jpg": "550431a5809bb94e1f65e3ff7a0feae3",
"assets/assets/image/inkare_last_work/anggo_app_ex_1.jpeg": "b148346666d4c50bae266dd27d1e37a9",
"assets/assets/image/inkare_last_work/fds_mobile_ex_1.jpeg": "09a8430f00733a3c1ab8dbbaca277b6e",
"assets/assets/image/inkare_last_work/khudi_app_ex_1.jpeg": "6b6448a00f268d88e7e92e1287ca5138",
"assets/assets/image/inkare_last_work/nusa_ritel_ex_0.jpeg": "0d6c43163687064e4eb6809244319c13",
"assets/assets/image/inkare_last_work/anggo_app_ex_2.jpeg": "2533863aa1ae243e07f3afd089fa60b1",
"assets/assets/image/inkare_last_work/charge_ion_1.jpg": "10d35a9b503244d70d65ce459b4f1f7f",
"assets/assets/image/inkare_last_work/khudi_app_ex_0.jpeg": "bcf6e779dadb9772507bd4108e379165",
"assets/assets/image/location.svg": "e4341535ee9127297a81550db25a253c",
"assets/assets/image/postman_icon_svg.svg": "0a8304f341fe4e74d3ae89b75df2c185",
"assets/assets/image/vscode.svg": "a80b6238ec4054a6de32d56f097ac656",
"assets/assets/image/insomnia_icon.svg": "bcf852a7f329e237a6aa14b06dcc9eca",
"assets/assets/image/oreno_foto_no_bg_compressed.png": "2dcf42c3760cb891c5138965f2d12687",
"assets/assets/image/svg_google_play.svg": "6734f3e5cb4279504de187925578e573",
"assets/assets/image/vscode.png": "3919e5b2f737f142a45921320e666382",
"assets/assets/image/graduation-cap.svg": "5f798f600ccf05f33a1cd0e6441a4bf1",
"assets/assets/image/firebase.svg": "1fe1d44c58e2093c400a1a683d8a44e4",
"assets/assets/image/firebase2.svg": "d6983f7fdd650a4539d8113b2e486421",
"assets/assets/image/info-button.svg": "1deea85b5ecf87ff112384a40c21009a",
"assets/assets/image/email.svg": "e42cce025ca2a8c2182604bca4cbb522",
"assets/assets/image/facebook_icon.svg": "2803e302df8342977b602eeab7c3ca1e",
"assets/assets/image/linkedin_icon.svg": "fa1131761e51fdcbc879c1edc683c96b",
"assets/assets/image/telephone-call.svg": "0210af8abea857028bacebe3fdcfe3d0",
"assets/assets/image/git.svg": "1190a19ce3cc940741a60137a1e074cb",
"assets/assets/image/dart_logo_png.png": "31976ff22bb0bd0ce18da966097ac742",
"assets/assets/image/rilo_last_work/kingkol_mobile_2.png": "42df06f19352556e1f1b46379da92b2c",
"assets/assets/image/rilo_last_work/bedas_market_2.png": "08432bf061faa1b820f890c536aa9b5c",
"assets/assets/image/rilo_last_work/3second_1.png": "8a6d928c5350fac6f7685bbfff4b2af2",
"assets/assets/image/rilo_last_work/kingkol_mobile_1.png": "6bf5b02c6349da889afb5899102a7f27",
"assets/assets/image/rilo_last_work/bedas_market_1.png": "16243e2d37fa54853d351522488dd942",
"assets/assets/image/home.svg": "8b41ca2e4953bb7e8cc248acee31994a",
"assets/AssetManifest.bin.json": "2f01b3221d17c9e53968dc8a5842c884",
"assets/FontManifest.json": "0ce90cb2f4fc9b0159476903bd7e61a8",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/NOTICES": "90364479745f8abe82a88714358eedbb",
"assets/AssetManifest.json": "dcdfc30c62b2e2c696da7ae7d05a0844",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/easy_localization/i18n/en-US.json": "5f5fda8715e8bf5116f77f469c5cf493",
"assets/packages/easy_localization/i18n/en.json": "5f5fda8715e8bf5116f77f469c5cf493",
"assets/packages/easy_localization/i18n/ar-DZ.json": "acc0a8eebb2fcee312764600f7cc41ec",
"assets/packages/easy_localization/i18n/ar.json": "acc0a8eebb2fcee312764600f7cc41ec",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "d6c7f56828ffce91056a94dc16e551e2",
"version.json": "009c9e65172e010890f7f65fde438006",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
