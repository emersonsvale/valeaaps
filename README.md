# Emerson Vale Web App

**A modern, Flutter‑based web portfolio hosted with Coolify and served via Nginx behind Cloudflare.**

---

## 🌐 Live Demo

[https://valeapps.com.br](https://valeapps.com.br)
*Works on both `example.com` and `example.com.br` without requiring `www`.*

---

## 🚀 Technologies Used

* **Flutter (stable)** for building the web UI
* **Nixpacks** via **Coolify** for zero‑config builds
* **Nginx** for static file hosting
* **Cloudflare DNS & SSL** for domain management, HTTPS, and routing
* **Pubspec** to manage Dart & Flutter dependencies

---

## 📦 Project Structure

```
/ ── shop_flutter_code (Flutter web project)
├─ lib/                  # Dart source files
├─ web/                  # Flutter web entrypoints
├─ pubspec.yaml          # Dependencies & metadata
├─ nixpacks.toml         # Build & deploy phases (Coolify)
└─ README.md             # This file
```

---

## 🔧 Local Setup

1. **Clone the repo**

   ```bash
   git clone https://github.com/your‑username/emerson_vale.git
   cd emerson_vale
   ```
2. **Install Flutter dependencies**

   ```bash
   flutter pub get
   ```
3. **Serve locally**

   ```bash
   flutter run -d chrome
   ```

---

## ⚙️ Build for Web

```bash
flutter build web --release
```

Artifacts will be output to `build/web/`.

---

## 📦 Deployment with Coolify

1. Create a `nixpacks.toml` at project root:

   ```toml
   [phases.setup]
   nixPkgs  = ["flutter"]
   aptPkgs  = ["unzip"]

   [phases.install]
   commands = ["flutter pub get"]

   [phases.build]
   commands = ["flutter build web --release"]

   [serve]
   command = "nginx -g 'daemon off;'"
   publish = "build/web"
   ```
2. In Coolify project settings:

   * Build pack: **Nixpacks**
   * Base directory: `/`
   * Publish directory: `build/web`
   * Static site: ✔︎
   * Single‑Page App: ✔︎
   * Domain direction: **Redirect to non‑www**
   * Redeploy on push

---

## 🌐 DNS & SSL (Cloudflare)

1. **DNS Records**

   * `A @ → <your server IP>` (Proxy: ON)
   * `CNAME www → valeapps.com.br` (Proxy: ON)
2. **Page Rule**

   * Forward all `www` requests to non‑`www` with 301 redirect.
3. **SSL/TLS**

   * Full (strict) mode
   * Always use HTTPS

---

## 🤝 Contributing

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/YourFeature`)
3. Commit changes (`git commit -m 'Add YourFeature'`)
4. Push to branch (`git push origin feature/YourFeature`)
5. Open a Pull Request

Please follow the [Flutter style guide](https://flutter.dev/docs/development/tools/formatting) and write descriptive commit messages.

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

> Built with ❤️ and Flutter by Emerson Vale.
