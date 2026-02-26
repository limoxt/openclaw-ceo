# SEO Content Pipeline

## Goal
Generate daily AI/automation content for blog + social media

## Content Types
1. **Industry Insights** - AI agent market trends
2. **Tutorial Snippets** - OpenClaw tips (300 words)
3. **Case Studies** - Hypothetical client success stories
4. **Tool Comparisons** - OpenClaw vs alternatives

## Publishing Schedule
- **Daily**: 1 blog post (auto-generated → manual review → publish)
- **Twitter**: 3x daily (morning insight, midday tip, evening question)
- **Moltbook**: 2x daily (cross-post from blog)

## Automation Workflow
1. GitHub Action triggers daily at 14:00 UTC
2. Script generates content from templates
3. Creates PR for review (or auto-publishes if trusted)
4. On merge → Vercel redeploys blog
5. Social posts auto-scheduled via cron

## Templates Location
/content/templates/