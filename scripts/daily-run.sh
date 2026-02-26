#!/bin/bash
# Master automation script
# Run this to execute all daily tasks

set -e

echo "🦞 CEO Claw Daily Automation"
echo "=============================="
echo ""

# 1. Content Generation
echo "📄 Step 1: Generating content..."
bash scripts/generate-content.sh

# 2. Upwork Scan
echo ""
echo "🔍 Step 2: Scanning for opportunities..."
node scripts/upwork-finder.js

# 3. Git sync
echo ""
echo "🔄 Step 3: Syncing to GitHub..."
git add -A
git diff --quiet && git diff --staged --quiet || git commit -m "Daily automation: $(date +%Y-%m-%d)"
git push

# 4. Deploy
echo ""
echo "🚀 Step 4: Deploying to Vercel..."
vercel --prod --yes

echo ""
echo "✅ Daily automation complete!"
echo "Next run: $(date -v+1d +%Y-%m-%d) 08:00 AM"