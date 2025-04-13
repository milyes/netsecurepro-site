<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>NetSecurePro – Accueil</title>
  <link rel="manifest" href="manifest.json">
  <script>
    if ('serviceWorker' in navigator) {
      navigator.serviceWorker.register('service-worker.js');
    }
  </script>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: #0a0f1a;
      color: white;
      text-align: center;
      padding: 40px 20px;
    }
    nav {
      background: #121826;
      padding: 12px 0;
      position: sticky;
      top: 0;
      display: flex;
      justify-content: center;
      gap: 20px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.3);
    }
    nav a {
      color: #00eaff;
      text-decoration: none;
      font-weight: bold;
    }
    nav a:hover {
      color: #60eaff;
    }
    h1 {
      color: #00eaff;
      margin-top: 20px;
    }
    p {
      color: #ccc;
      font-size: 1.1em;
      max-width: 800px;
      margin: 0 auto 30px;
    }
    .image-preview img {
      width: 100%;
      max-width: 900px;
      border-radius: 12px;
      box-shadow: 0 0 24px rgba(0,255,255,0.2);
    }
    .banner-section img {
      max-width: 100%;
      border-radius: 16px;
      margin-top: 40px;
      box-shadow: 0 0 32px rgba(0,255,255,0.2);
    }
    footer {
      margin-top: 40px;
      font-size: 0.8em;
      color: #777;
    }
  </style>
</head>
<body>
  <nav>
    <a href="index.html">Accueil</a>
    <a href="modules.html">Modules</a>
    <a href="developer_interactive.html">Développeur</a>
    <a href="docs.html">Documentation</a>
  </nav>

  <h1>NetSecurePro – Intelligence Autonome</h1>
  <p>Bienvenue sur la plateforme IA personnelle de Mohamed Ilyes Zoubirou.<br>
     Découvrez des modules IA pour la cybersécurité, la gestion de données et l'automatisation mobile.</p>

  <div class="banner-section">
    <img src="assets/1000519890.png" alt="NetSecurePro – Modules IA">
  </div>

  <footer>
    &copy; 2025 MOHAMED ILYES ZOUBIROU – NetSecurePro IA. Tous droits réservés.
  </footer>
</body>
</html>
