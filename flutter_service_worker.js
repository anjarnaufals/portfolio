'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "f393d3c16b631f36852323de8e583132",
"main.dart.js": "48c63116fae99179cfb971f91e3d157f",
"assets/FontManifest.json": "0ce90cb2f4fc9b0159476903bd7e61a8",
"assets/AssetManifest.bin": "f11ff6956a34def5389cac211f76bbab",
"assets/fonts/MaterialIcons-Regular.otf": "e08f6f32e6936aa9e48cf2993615bdb0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/assets/image/inkare_last_work/anggo_app_ex_2.jpeg": "2533863aa1ae243e07f3afd089fa60b1",
"assets/assets/image/inkare_last_work/nusa_ritel_ex_0.jpeg": "0d6c43163687064e4eb6809244319c13",
"assets/assets/image/inkare_last_work/charge_ion_3.jpg": "083f304271a5cd9d13093afb00ad1600",
"assets/assets/image/inkare_last_work/fds_mobile_ex_0.jpeg": "877c9fe69201af122f998a7a78cba669",
"assets/assets/image/inkare_last_work/anggo_app_ex_1.jpeg": "b148346666d4c50bae266dd27d1e37a9",
"assets/assets/image/inkare_last_work/fds_mobile_ex_1.jpeg": "09a8430f00733a3c1ab8dbbaca277b6e",
"assets/assets/image/inkare_last_work/khudi_app_ex_2.jpeg": "25a9abb96ffa88b1a7ee09351203071a",
"assets/assets/image/inkare_last_work/charge_ion_2.jpg": "550431a5809bb94e1f65e3ff7a0feae3",
"assets/assets/image/inkare_last_work/khudi_app_ex_1.jpeg": "6b6448a00f268d88e7e92e1287ca5138",
"assets/assets/image/inkare_last_work/charge_ion_1.jpg": "10d35a9b503244d70d65ce459b4f1f7f",
"assets/assets/image/inkare_last_work/nusa_ritel_ex_1.jpeg": "884cce8f4560b61f6d83ca3d5ba59416",
"assets/assets/image/inkare_last_work/charge_ion_0.jpg": "260b1776742261de3312843b582d998c",
"assets/assets/image/inkare_last_work/khudi_app_ex_0.jpeg": "bcf6e779dadb9772507bd4108e379165",
"assets/assets/image/inkare_last_work/khudi_app_ex_3.jpeg": "8c2c56236a3ed89956ddfe6e7f90b553",
"assets/assets/image/flutter.svg": "faf8f499559f6b2f815f454a5794eae3",
"assets/assets/image/oreno_foto.jpg": "ff573a47fec2ed02b64cc7eb7e456723",
"assets/assets/image/linkedin_icon.svg": "fa1131761e51fdcbc879c1edc683c96b",
"assets/assets/image/info-button.svg": "1deea85b5ecf87ff112384a40c21009a",
"assets/assets/image/email.svg": "e42cce025ca2a8c2182604bca4cbb522",
"assets/assets/image/oreno_foto_compressed.jpg": "42e07da55fbec27f6b9ebf67e0676142",
"assets/assets/image/stack.svg": "b97977808ed575ed12adedb25bd1bd7b",
"assets/assets/image/dart_logo_png.png": "31976ff22bb0bd0ce18da966097ac742",
"assets/assets/image/instagram_icon.svg": "622e2947df6ed5a12b06a6ea7cb70777",
"assets/assets/image/facebook_icon.svg": "2803e302df8342977b602eeab7c3ca1e",
"assets/assets/image/firebase2.svg": "d6983f7fdd650a4539d8113b2e486421",
"assets/assets/image/discord_icon.svg": "cc8afd293890f2369c388347b1f897b9",
"assets/assets/image/graduation-cap.svg": "5f798f600ccf05f33a1cd0e6441a4bf1",
"assets/assets/image/svg_google_play.svg": "6734f3e5cb4279504de187925578e573",
"assets/assets/image/rilo_last_work/kingkol_mobile_1.png": "6bf5b02c6349da889afb5899102a7f27",
"assets/assets/image/rilo_last_work/kingkol_mobile_2.png": "42df06f19352556e1f1b46379da92b2c",
"assets/assets/image/rilo_last_work/bedas_market_2.png": "08432bf061faa1b820f890c536aa9b5c",
"assets/assets/image/rilo_last_work/bedas_market_1.png": "16243e2d37fa54853d351522488dd942",
"assets/assets/image/rilo_last_work/3second_1.png": "8a6d928c5350fac6f7685bbfff4b2af2",
"assets/assets/image/oreno_foto_no_bg.png": "5bc86ae9f98c17becf5706a269d5d577",
"assets/assets/image/telephone-call.svg": "0210af8abea857028bacebe3fdcfe3d0",
"assets/assets/image/job.svg": "5bf398bb48b80440af72944fefe094dd",
"assets/assets/image/oreno_foto_no_bg_compressed.png": "2dcf42c3760cb891c5138965f2d12687",
"assets/assets/image/git.svg": "1190a19ce3cc940741a60137a1e074cb",
"assets/assets/image/home.svg": "8b41ca2e4953bb7e8cc248acee31994a",
"assets/assets/image/gmail_icon.svg": "d0915bc3877280aee83c4d1cd3bc3856",
"assets/assets/image/postman_icon_svg.svg": "0a8304f341fe4e74d3ae89b75df2c185",
"assets/assets/image/location.svg": "e4341535ee9127297a81550db25a253c",
"assets/assets/image/vscode.svg": "a80b6238ec4054a6de32d56f097ac656",
"assets/assets/image/insomnia_icon.svg": "bcf852a7f329e237a6aa14b06dcc9eca",
"assets/assets/image/firebase.svg": "1fe1d44c58e2093c400a1a683d8a44e4",
"assets/assets/image/vscode.png": "3919e5b2f737f142a45921320e666382",
"assets/assets/fonts/RobotoMono-ExtraLight.ttf": "b8b8a584a0b8307e1aa11f9f037a0502",
"assets/assets/fonts/RobotoMono-Bold.ttf": "0339b745f10bb01da181af1cdc33c361",
"assets/assets/fonts/RobotoMono-Medium.ttf": "b090e3202375adb631519fab6bf121c2",
"assets/assets/fonts/RobotoMono-Italic.ttf": "9eb6854ad766566c29d1bb5711504345",
"assets/assets/fonts/RobotoMono-SemiBold.ttf": "e9372f334303337690d46c5a169f3b10",
"assets/assets/fonts/RobotoMono-Regular.ttf": "7e173cf37bb8221ac504ceab2acfb195",
"assets/assets/fonts/RobotoMono-Light.ttf": "14fa2a726b29e8805e287c002ab64397",
"assets/NOTICES": "a5820b47f3debdcc62dda420d9a4f844",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "ebcdbeb06c387bc8bc54870351b61bb1",
"assets/AssetManifest.bin.json": "37cc3d6088386fae274925e7d3f8264e",
"index.html": "8acf0316fbda9da952d6bb02adac8b1d",
"/": "8acf0316fbda9da952d6bb02adac8b1d",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "2fed11aa28bbe08c5673bb0a848e53cc"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
