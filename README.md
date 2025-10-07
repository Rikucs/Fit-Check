<div align="center">
<img width="1200" height="475" alt="GHBanner" src="https://github.com/user-attachments/assets/0aa67016-6eaf-458a-adb2-6e31a0763ed6" />
</div>

# Fit Check - Virtual Try-On PWA

A Progressive Web App for virtual wardrobe and outfit planning with AI-powered styling suggestions.

## Features

✨ **PWA Capabilities**
- 📱 Installable on mobile and desktop
- 🔄 Offline functionality with service worker
- ⚡ Fast loading and caching
- 🎨 Native app-like experience

🤖 **AI-Powered**
- Virtual try-on functionality
- Outfit recommendations
- Style suggestions

## Run Locally

**Prerequisites:** Node.js

1. Install dependencies:
   ```bash
   npm install
   ```

2. Set the `GEMINI_API_KEY` in [.env.local](.env.local) to your Gemini API key:
   ```
   GEMINI_API_KEY=your_api_key_here
   ```

3. Run the development server:
   ```bash
   npm run dev
   ```

4. Open [http://localhost:3000](http://localhost:3000) in your browser

## Build and Deploy

### Build for Production
```bash
npm run build
```

### Deploy to GitHub Pages

#### Automatic Deployment (Recommended)
1. Push your code to GitHub repository named 'Fit-Check'
2. Go to repository Settings > Pages
3. Set source to 'GitHub Actions'
4. Add `GEMINI_API_KEY` as a repository secret in Settings > Secrets and variables > Actions
5. Push to main branch - the app will automatically deploy

#### Manual Deployment
1. Run the build command: `npm run build`
2. Upload the `dist` folder contents to your GitHub Pages repository
3. Your app will be available at: `https://[username].github.io/Fit-Check/`

### Quick Deploy Script
Run the deployment script:
- **Windows:** `.\deploy.ps1`
- **Linux/Mac:** `./deploy.sh`

## PWA Installation

Once deployed, users can install the app:
1. Visit the deployed app in a browser
2. Look for the "Install" button or browser prompt
3. Click "Install" to add to home screen/desktop

## API Key Configuration

The app requires a Gemini API key for AI functionality:
- For development: Add to `.env.local`
- For production: Set as GitHub secret `GEMINI_API_KEY`

The key is properly exposed through Vite's environment configuration and will be embedded in the built application.
