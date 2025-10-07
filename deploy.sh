#!/bin/bash

# Build the app
echo "Building the app..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "Build successful! The app is ready for deployment."
    echo "To deploy to GitHub Pages:"
    echo "1. Push your code to GitHub repository 'Fit-Check'"
    echo "2. Go to repository Settings > Pages"
    echo "3. Set source to 'GitHub Actions'"
    echo "4. Add your GEMINI_API_KEY as a repository secret"
    echo "5. The workflow will automatically deploy when you push to main branch"
    echo ""
    echo "Or you can manually deploy the 'dist' folder contents to GitHub Pages"
else
    echo "Build failed! Please check the errors above."
    exit 1
fi