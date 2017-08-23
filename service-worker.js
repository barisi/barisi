self.addEventListener('install', function(e) {
    e.waitUntil(
        caches.open('barisi').then(function(cache) {
            return cache.addAll(['/', '/index.html', '/modernizr.js', '/style.css', '/underscore.js', '/images/favicon.ico', 
                '/images/Developer-Associate.png', '/images/favicon.png', '/images/Solutions-Architect-Associate.png', 
                '/images/SysOps-Administrator-Associate.png', '/manifest.json', '/fonts/icomoon.woff', '/fonts/icomoon.ttf', 
                '/fonts/icomoon.svg', '/fonts/icomoon.eot', '/fonts/icomoon.dev.svg', 'service-worker.js']);
        })
    );
});

self.addEventListener('fetch', function(event) {
    console.log(event.request.url);
    event.respondWith(
        caches.match(event.request).then(function(response) {
            return response || fetch(event.request);
        })
    );
});