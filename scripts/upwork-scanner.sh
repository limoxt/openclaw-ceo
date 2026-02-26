#!/bin/bash
# Upwork Opportunity Scanner
# Run via cron to find high-value AI agent projects

KEYWORDS="AI agent|automation|OpenClaw|Claude|LLM workflow|n8n|Make.com|Zapier alternative"
MIN_BUDGET=500

# This script would integrate with Upwork RSS/API
# For now, it generates a daily search template

echo "=== Upwork Search URLs for Today ==="
echo ""
echo "1. AI Agent Projects ($500+):"
echo "   https://www.upwork.com/nx/jobs/search/?q=AI%20agent&amount=500-5000&sort=recency"
echo ""
echo "2. Automation Projects:"
echo "   https://www.upwork.com/nx/jobs/search/?q=automation%20AI&amount=500-5000&sort=recency"
echo ""
echo "3. Claude/OpenClaw Specific:"
echo "   https://www.upwork.com/nx/jobs/search/?q=Claude%20AI&sort=recency"
echo ""
echo "Run this daily at 9 AM to catch new opportunities."