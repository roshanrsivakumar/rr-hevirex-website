#!/bin/bash
# RR Hevirex — GitHub Deploy Script
# Run this in Terminal from the project folder

# 1. Clean up any stale git lock (if it exists)
rm -f .git/index.lock

# 2. Stage all files
git add .

# 3. Commit
git commit -m "Initial commit: RR Hevirex premium transit seating website

4-page website:
- index.html: Hero, OEM advantage, series preview, 5-lang
- products.html: 8-model spec grid (Executive/Fleet/City), upholstery carousel
- about.html: Manufacturing hub, Lean ops, leadership portraits
- contact.html: OEM form, strictly corporate contact block

Karur-built premium transit seating. Pan-India OEM supply."

# 4. REPLACE 'YOUR-GITHUB-USERNAME' with your actual GitHub username
#    Create the repo first at: https://github.com/new
#    Name it: rr-hevirex-website (or whatever you prefer)
#    Set to PUBLIC for free GitHub Pages hosting

git remote add origin https://github.com/YOUR-GITHUB-USERNAME/rr-hevirex-website.git
git branch -M main
git push -u origin main

echo ""
echo "✓ Pushed to GitHub."
echo ""
echo "To enable GitHub Pages (free hosting):"
echo "  1. Go to your repo on GitHub"
echo "  2. Settings → Pages"
echo "  3. Source: Deploy from branch → main → / (root)"
echo "  4. Save — site will be live at:"
echo "     https://YOUR-GITHUB-USERNAME.github.io/rr-hevirex-website/"
