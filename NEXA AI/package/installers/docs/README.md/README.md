# 🌌 NEXA AI — La Primera IA con Memoria Visual y Estilo Personal

> **Tu identidad creativa, amplificada por inteligencia artificial.**  
> NEXA AI es una plataforma **open-source**, **multimodal** y **personalizable** que recuerda tu estilo, evoluciona contigo y te entrega resultados listos para el mundo real: imágenes, videos, páginas web y más.

![NEXA AI Demo](https://nexa-ai.vercel.app/demo-preview.jpg)

---

## ✨ Características

- 🎨 **Estilo Visual Personal**: Guarda y reutiliza estilos visuales únicos  
- 🧠 **Memoria Contextual**: Recuerda imágenes, conversaciones y preferencias  
- 🌐 **Creación Web**: Genera páginas web completas desde un prompt  
- 🎥 **Video Profesional**: Crea videos con Google Veo 2 (nube) o Kling AI  
- 🗣️ **Voz Natural**: Habla y escucha en español con ElevenLabs  
- 💻 **100% Local**: Usa Qwen3-Max o Llama 3.2 sin internet (con LM Studio u Ollama)  
- 📦 **Entrega Profesional**: Exporta en ZIP, PDF, HTML o comparte por enlace  
- 🎽 **Modo Presentación**: Ideal para demostraciones en vivo  

---

## 🚀 Cómo Empezar

### Opción 1: Usar en la nube (rápido)
Visita la **demo en vivo**:  
👉 [https://nexa-ai.vercel.app](https://nexa-ai.vercel.app)

### Opción 2: Instalar en Windows (recomendado para usuarios)
1. Descarga el instalador:  
   → [`NEXA_AI_Installer.exe`](https://github.com/angel/nexa-ai/releases/latest)
2. Ejecútalo (requiere PowerShell 5.1+)
3. ¡Listo! Se instalará Ollama + Llama 3.2 y crearán tu avatar.

### Opción 3: Desarrollo local
```bash
git clone https://github.com/angel/nexa-ai.git
cd nexa-ai
cp .env.example .env.local
# Añade tus tokens si quieres IA en la nube
npm install
npm run dev