'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "66a1b37c2ebcff743f03ce35f144e512",
"version.json": "16e7e0d4a3aed53ac1d08bc5c2ff141b",
"index.html": "da113073e57ccafbe81853042e87e450",
"/": "da113073e57ccafbe81853042e87e450",
"main.dart.js": "9eddc0ce5fde736c8de736c3148e8543",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "82757cad990295646cc2e55d3cb9d64e",
"assets/AssetManifest.json": "18be1d066b67c2a4833868bdb7ba428e",
"assets/NOTICES": "0f7cdac7be9938558672302f3e3b9158",
"assets/FontManifest.json": "eb6f16734cd985f05ad2f90ec30ebd6d",
"assets/AssetManifest.bin.json": "92bf47bdb7b3c299d950a02e4d3dcb57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0e06fe40d35e07f53cf6249622516c53",
"assets/fonts/MaterialIcons-Regular.otf": "d54bae5788dd45d8ad345e0ac2eeca7e",
"assets/assets/47.jpeg": "99d0ca9937e14c107fa5ba70a3b2d83c",
"assets/assets/10.jpeg": "5c053a87d50130a4ec891f69f58659c6",
"assets/assets/51.jpeg": "533107f55122d263153887de287fcf0d",
"assets/assets/26.jpeg": "dcd2348e1c589dc160cf7f06ea700d3d",
"assets/assets/30.jpeg": "d6bdce62cb907e71b6a65f1317636871",
"assets/assets/31.jpeg": "7b74d57952c20c682336dfe81e24b6a2",
"assets/assets/27.jpeg": "2069c115098c96ff2a782b89fd334614",
"assets/assets/animation1.json": "b09766be16fc92433d36191c60def8ba",
"assets/assets/f44.png": "1c37ae0c2f966e1bbb41964da373f85e",
"assets/assets/50.jpeg": "85c7126b02625173ea5b40286079267b",
"assets/assets/11.jpeg": "6d77a521ae2085e96e77aa9a2f336dfd",
"assets/assets/46.jpeg": "1ac881df87df06fb1816fe15e77f8245",
"assets/assets/x.svg": "f50023709a2887ce479bda6d420d7c2a",
"assets/assets/20.jpeg": "ff8bbcdf52c95e31eed8304a4d2d638b",
"assets/assets/3v.MP4": "997e575ab55b160bb343b733dc221786",
"assets/assets/f6.png": "e5e27c0431f662d2b9cf518da8de1e54",
"assets/assets/36.jpeg": "96f7dcc90409792f36959e76234246b2",
"assets/assets/41.jpeg": "b3d9f29a9caffa0b119704d83949ccb2",
"assets/assets/16.jpeg": "d8451c7dd554a65f1556a1bfe9331f74",
"assets/assets/f4.png": "1506015a6b4e6eb7f64f9f91fdae35e8",
"assets/assets/f5.png": "6a0ae151b254c6e1dee932d9daf2c9c4",
"assets/assets/6.jpeg": "d814c9127bd363e435fd7c0dceef2d57",
"assets/assets/7.jpeg": "31fd55f373414ad4cf967ce27bfbf8e8",
"assets/assets/f1.png": "e0ccea62a1f1041c255cac28e888ece6",
"assets/assets/17.jpeg": "291bd99701c170a1f9df609dfd1d59bb",
"assets/assets/40.jpeg": "dbc2ff87125d26f12ff473bdb3396d5b",
"assets/assets/37.jpeg": "c30daf3fbda6432ed16dd029271b068d",
"assets/assets/f2.png": "600555178352706e9a522c145f3146d2",
"assets/assets/2v.MP4": "1ad74e79dcf07b0da88ec560f824e37b",
"assets/assets/21.jpeg": "c15a452d2f254981f0c7c7330edd9a31",
"assets/assets/f3.png": "24212cd66a89fa0e17bd9883f9210103",
"assets/assets/tg.svg": "1c52daf73cc3ed8c8897e8db3fba495a",
"assets/assets/34.jpeg": "9d32cddb5b5b6b06d3f046e7e5e81e14",
"assets/assets/8.jpeg": "b761b5ad65c9713690cc7c588a99a70e",
"assets/assets/1v.MP4": "4cac2e5fd287a17fc530958b6936512c",
"assets/assets/22.jpeg": "e51f818067c3af037ca730f6567da497",
"assets/assets/18.jpeg": "54fd0292dcc33c511a17265f37af6612",
"assets/assets/38.jpeg": "8904387cd5e08bde380e0fedbedf0a99",
"assets/assets/55.jpeg": "28c00a0715c89194a30674cf622ea778",
"assets/assets/14.jpeg": "8d72aa2ddc52e5c7e82b32ae2ccd3d03",
"assets/assets/43.jpeg": "2235f22d89ea70e425f911b6b0e77f1d",
"assets/assets/42.jpeg": "cd3d299e4dd6e0ef12910cdacb31a065",
"assets/assets/15.jpeg": "84034ecf343f425af66f3ed456d7114a",
"assets/assets/54.jpeg": "de3f1b991338de089232576c27d0d27a",
"assets/assets/5.jpeg": "be1cac5d445e51324835996713328f38",
"assets/assets/39.jpeg": "1f0a84711c3115a44b129a739aeb19c5",
"assets/assets/19.jpeg": "d2446d5dbfc3acc34ce9e499e342355b",
"assets/assets/23.jpeg": "c47753967f103a15ef767ca6504e6d5b",
"assets/assets/9.jpeg": "97d465561e3cea2fbf7f6ca5d42ddd69",
"assets/assets/35.jpeg": "6c4465e459e2f7e627da81b997c48cee",
"assets/assets/2.jpeg": "65720e1338fdb6da1c34e7cae854be97",
"assets/assets/28.jpeg": "f036d99392d6a6bf8dec68bed23a68b8",
"assets/assets/53.jpeg": "bc08796597797fe85fbefef4408b7142",
"assets/assets/12.jpeg": "d22f4d5d0c4e1241c745066a23738119",
"assets/assets/32.jpeg": "948f1b824161981a7b797172137105ca",
"assets/assets/24.jpeg": "bdd8772e7eb5ba47819c9cd500a11621",
"assets/assets/fonts/Adigiana.ttf": "69bd3d371ccf4c5c0eced5b7976e3035",
"assets/assets/fonts/Genty.ttf": "10d076ace0091af118013be676eff6c2",
"assets/assets/49.jpeg": "b7158e8073435bf6a5cb993370bae12d",
"assets/assets/48.jpeg": "b7158e8073435bf6a5cb993370bae12d",
"assets/assets/25.jpeg": "3dbd08b963eaa6a33007fee64ac9870a",
"assets/assets/33.jpeg": "5116275e564e9a572567d8b39f35df82",
"assets/assets/13.jpeg": "7d5a67a11c2282d931ac2c9058e3ce64",
"assets/assets/52.jpeg": "f8983ec83d3211143f93d7068823de9d",
"assets/assets/29.jpeg": "05f4b1a95601623d6392a7768eb1af1e",
"assets/assets/3.jpeg": "57702bac0de9b2bcf5eb9066d44c5c47",
"1.png": "a662ea90518241746597a7bc460bc5ed",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
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
