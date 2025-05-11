# ─── Build Stage ─────────────────────────────────────
FROM cirrusci/flutter:3.7.12 AS builder
WORKDIR /app

COPY pubspec.* ./
RUN flutter pub get      # agora rodará com Dart 3.x

COPY . .
RUN flutter build web --release

# ─── Runtime Stage ───────────────────────────────────
FROM nginx:alpine
COPY --from=builder /app/build/web /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
