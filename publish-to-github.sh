#!/bin/bash
# scripts/publish-to-github.sh

echo "📦 Preparando NEXA AI para GitHub..."

# 1. Verificar token de GitHub
if [ -z "$GITHUB_TOKEN" ]; then
  echo "🔑 Error: GITHUB_TOKEN no configurado."
  echo "   Crea un token en: https://github.com/settings/tokens"
  echo "   Permisos: repo, workflow"
  exit 1
fi

# 2. Leer nombre del repo (por defecto: nexa-ai)
REPO_NAME=${1:-nexa-ai}
USERNAME=$(git config user.name || echo "tu-usuario")

# 3. Crear repositorio en GitHub (API v3)
echo "☁️ Creando repositorio en GitHub..."
RESPONSE=$(curl -s -H "Authorization: token $GITHUB_TOKEN" \
  -d "{\"name\":\"$REPO_NAME\",\"private\":true,\"description\":\"NEXA AI – Plataforma de IA autónoma global\"}" \
  https://api.github.com/user/repos)

# 4. Verificar si ya existe
if echo "$RESPONSE" | grep -q "already exists"; then
  echo "ℹ️ El repositorio ya existe. Continuando..."
else
  echo "✅ Repositorio creado: https://github.com/$USERNAME/$REPO_NAME"
fi

# 5. Inicializar Git (si no está)
if [ ! -d .git ]; then
  git init
  git checkout -b main
fi

# 6. Añadir archivos
git add .
git commit -m "🚀 Lanzamiento inicial de NEXA AI – IA autónoma, global y creativa"

# 7. Conectar con GitHub
git remote add origin "https://$GITHUB_TOKEN@github.com/$USERNAME/$REPO_NAME.git" 2>/dev/null || true
git push -u origin main --force

# 8. Mensaje final
if [ $? -eq 0 ]; then
  echo "🎉 ¡NEXA AI subida a GitHub con éxito!"
  echo "🔗 URL: https://github.com/$USERNAME/$REPO_NAME"
  echo ""
  echo "✨ Ahora puedes:"
  echo "   - Compartir el enlace con tu equipo"
  echo "   - Conectar con Vercel para despliegue automático"
  echo "   - Recibir actualizaciones de la comunidad"
else
  echo "❌ Error al subir a GitHub. Revisa tu token y conexión."
  exit 1
fi