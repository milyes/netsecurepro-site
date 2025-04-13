self.addEventListener("install", e => {
  e.waitUntil(
    caches.open("netsecurepro-cache").then(cache => {
      return cache.addAll([
        "./",
        "./index.html",
        "./docs.html",
        "./developer_interactive.html"
      ]);
    })
  );
});

self.addEventListener("fetch", e => {
  e.respondWith(
    caches.match(e.request).then(response => {
      return response || fetch(e.request);
    })
  );
});