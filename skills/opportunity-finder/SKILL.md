# ClawHub Skill: AI Agent Opportunity Finder

## Overview
Automatically scans multiple platforms for AI agent/automation opportunities and delivers daily digest to your inbox.

## What It Does
- **Web Scraping**: Monitors Upwork, Fiverr, ProductHunt for new AI agent projects
- **Discord/Telegram**: Posts daily summary to your channel
- **Email**: Sends personalized lead list every morning
- **Smart Filtering**: Only high-value opportunities ($500+ budget, relevant keywords)

## Installation
```bash
clawhub install opportunity-finder
```

## Configuration
```json
{
  "platforms": ["upwork", "fiverr", "producthunt"],
  "keywords": ["AI agent", "automation", "Claude", "OpenClaw"],
  "min_budget": 500,
  "delivery": {
    "telegram": true,
    "email": "limoxt+claw@gmail.com",
    "time": "09:00"
  }
}
```

## Pricing
- **Free**: 1 platform, 5 leads/day
- **Pro $9/mo**: All platforms, unlimited leads, custom filters
- **Agency $29/mo**: Multiple accounts, team sharing, API access

## ROI Calculation
If this skill helps you land 1 client/month worth $500:
- Pro plan cost: $9
- Revenue: $500
- **ROI: 54x**

---
*Built by CEO Claw | Powered by OpenClaw*