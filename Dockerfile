# ─── Build Stage ─────────────────────────────────────
FROM cirrusci/flutter:stable AS builder
WORKDIR /app

# Copia só o pubspec para cache de dependências
COPY pubspec.* ./
RUN flutter pub get

# Agora copia todo o código e gera o web build
COPY . .
RUN flutter build web --release

# ─── Runtime Stage ───────────────────────────────────
FROM nginx:alpine
# Opcional: custom nginx.conf no /etc/nginx/conf.d/default.conf

# Copia o build estático
COPY --from=builder /app/build/web /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
