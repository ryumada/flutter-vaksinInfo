'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "146131ca85d491c6345d3645f14377c8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/assets/images/getYourVaccine.png": "7e362248959b5e4517c5e973a1e54727",
"assets/assets/images/vaccineTime.png": "155d577b5172dcea9a83e581c920bf82",
"assets/assets/images/judul_sample.jpg": "9aca9fb1e7e5f84373185eca22dff3cb",
"assets/assets/images/vaccinated.png": "c902401811e7818a84b4fa371929376e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/AssetManifest.json": "99e3c959c5a3cc3d93f86b87dd984bc1",
"assets/NOTICES": "bcc49520519b4b83a407ed468803ccff",
"version.json": "8c3b70dce9582415f9a6acc3d0c2eb6d",
"main.dart.js": "85994234dae150fa377e0cd88595f07c",
".git/refs/heads/master": "8767758b945cf7f7b2a7f5d0708647bf",
".git/refs/heads/build": "269b3a208017b69a8df0594fb3b199a0",
".git/refs/remotes/origin/HEAD": "73a00957034783b7b5c8294c54cd3e12",
".git/refs/remotes/origin/build": "269b3a208017b69a8df0594fb3b199a0",
".git/HEAD": "013f073889cb8d3d23aea2663408e9d8",
".git/objects/5a/58ca489ee8dc0f54369e6a518128513f3d9570": "3c1e7c56e1e7e1fc1726ddb67c3b1fe8",
".git/objects/f4/97b700e898e74a7ed220fb3371d16cae4aed4a": "070a57562356522054103026678408c1",
".git/objects/f4/cd064d4ea6f11ad20e064904c8eab312e409cd": "32ee1d48f06dab0086db18a6490ceae2",
".git/objects/73/d064ef6d9c3ac979fb84a00896512c3bc7b3c2": "6e46c6fec892827d158e985bc57574da",
".git/objects/57/d4fac5f3efde0899ea7e63809ab64f38965e78": "e993d83640047be8eb27c3195b616424",
".git/objects/9f/20d0c352c4d691ddcefb52836499045cc5c2fa": "ae1c8b093c5a2b5c9ad7402edf5abb59",
".git/objects/bd/7104c807a2a5b075d1e7bc1bb870991ce35b5c": "3d9e6846923bcac4d0b585dca93b55d0",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/2a/2378cbe220cc53d9f167c632a1b335492c4cfe": "760a3782072886b275b2e7c7f2175289",
".git/objects/ce/0280aca2c45ba2b0ff18c7452e0c9b694096a7": "1026ee529a52bc9d605c7e92c89e0460",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/7b/c3cd64f7aa965d1a338a8645e1000229f21325": "801e1f07fac7d6081ada7469c6de5934",
".git/objects/54/62b77048c7862038fba7f71a02cb79ac2d4bee": "5fce02dd187bb61eddb296744f814141",
".git/objects/3f/89df5f49a07c3e8ef48c79bc20eb5209cfcb48": "7368f8bd9e667768ff696c19fe0b51c4",
".git/objects/98/2fa7c36eafa71c9562bce87f8410e71a4abcf2": "1638c89b68b0a1c35b08dfacb78c823e",
".git/objects/8b/33f23f8131c3cd18099b53dc6ad9871b274d94": "3a27ae747b957e857436085e50739c45",
".git/objects/da/2a1aac6258abf6f1ab08dee6127b2a2c31d4a1": "552ea3c0365ceb317d1dd1dca7140819",
".git/objects/53/bdf6503cda978b440febd6040c7310e8281bf3": "cc858a60efc6ec41e631759cd9c53d89",
".git/objects/db/0c7466aabba04d903e404eb05427b6cc1740fd": "e90f179aa8eb5901a4368f7cfc35b159",
".git/objects/ef/236d2beae200789b170352dc99e0a9d462ab28": "25a0f943fe13582bf07d236d8a55a88b",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/pack/pack-60acd8abc9c19226cec3e0d34bbedf36b864c143.pack": "69b5a10bc02151cba0a4ab3be09e8bf3",
".git/objects/pack/pack-60acd8abc9c19226cec3e0d34bbedf36b864c143.idx": "389c6dd95d58a9d0ee91f1d5bc2b755b",
".git/objects/e1/ff10baaba69d62c450a299e181428347a82329": "00012869d0b36ceeaed526ded19e4708",
".git/objects/61/e933251fe9d125585e1aee56d3ccf3830dcb7e": "fe791a1744a1924c5e46cb6a3a2749fe",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/60/5203c3917291238aaac7142e6be9dab1ebb387": "b1a4ca7f00f8d5bec4c2fad3dedfa548",
".git/objects/60/051b353ce87c6fac150a0032ca9804113ad7cd": "e29b3efeeef12192ea595c28f4722b95",
".git/objects/56/cb34b7f8bb9dfda46cb113ab3ed7677518d641": "e428c355ab4ee88e955cdd6288a897d4",
".git/objects/6d/789b91c668852eed65bcc2566ca2b8bc16ac4b": "32a964013f4c2bcbfea406533fa933fe",
".git/objects/91/0e7c83fef1c072142361da33d87ed05b27f780": "e13bb9a027f3e7dfed3606b68924cef6",
".git/objects/48/8d2eba7a01b8a8d045b18236bcecf38b1dbdd0": "58558776a7874cae79f41f2c8175552f",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/5b/dede5abec16cd6ad4f7658ce877a8c67c7dda6": "2ee7744502be70d0636627c0e6635f31",
".git/objects/bc/1ba746c58e3584cce5d8759cbdb1dc1baffd4c": "03de419bfaef4f04ff7ab680b384f657",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/8c/14219f14a2b7cfa640254bed730d9fcc309e8c": "5d30ec25e72e3a6988e114531cc8605c",
".git/objects/b3/ec784a77ae92f8d0535dc8779f9c4a94242318": "e61716470793c24256670180e87ee47d",
".git/packed-refs": "46cf59cb9545347fc46d20c50f087693",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/FETCH_HEAD": "d41d8cd98f00b204e9800998ecf8427e",
".git/ORIG_HEAD": "077a7f2175d4843fbef9286744a6ab6c",
".git/logs/refs/heads/master": "bc7e18062f58457768f40e2a626011cd",
".git/logs/refs/heads/build": "7c90f83db2773e1eb63afe1c75385859",
".git/logs/refs/remotes/origin/HEAD": "bc7e18062f58457768f40e2a626011cd",
".git/logs/refs/remotes/origin/build": "b117ddfb302cf8a4697fb668c47da3a0",
".git/logs/HEAD": "c38ab474fe5793a18a372ad5a77f174e",
".git/index": "7329afb05a681bd860f5da4afb83e507",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "db4d62db2039e4bec38baa7567788284",
".git/config": "b783c019a4fc6384cdde865ffe42a1cf",
".git/COMMIT_EDITMSG": "6e5a8cc3dacdcc7336aba6c125d05452",
"index.html": "bc39c994e1214c3aafa3b8e16bcb1dfb",
"/": "bc39c994e1214c3aafa3b8e16bcb1dfb"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
