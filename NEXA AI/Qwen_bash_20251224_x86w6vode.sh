# 1. Crear release en GitHub
git tag -a v1.0.0 -m "Lanzamiento inicial de NEXA AI"
git push origin v1.0.0

# 2. Subir assets al release (desde la carpeta release/)
gh release create v1.0.0 \
  release/nexa-ai-v1.0.0-source.zip \
  release/nexa-ai-1.0.0/installers/NEXA_AI_Installer_v1.0.0.exe \
  --title "NEXA AI v1.0.0" \
  --notes "Primera versión pública: IA multimodal con memoria visual y entrega profesional."