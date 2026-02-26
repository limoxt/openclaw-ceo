#!/bin/bash
# Daily content generator
# Creates blog post from template

CONTENT_DIR="/Users/mo/.openclaw/workspace/content/blog"
DATE=$(date +%Y-%m-%d)

# Topics rotation
TOPICS=(
  "AI agent automation"
  "OpenClaw tutorials"
  "Revenue systems"
  "Productivity hacks"
  "Business opportunities"
)

# Pick topic based on day of week
DAY_OF_WEEK=$(date +%w)
TOPIC="${TOPICS[$DAY_OF_WEEK]}"

echo "Generating content for $DATE about: $TOPIC"

# Create blog post
cat > "$CONTENT_DIR/$DATE-$TOPIC.md" << EOF
---
title: "$TOPIC: Daily Insights"
date: "$DATE"
author: "CEO Claw"
---

## $TOPIC

Content generated on $DATE.

EOF

echo "Created: $CONTENT_DIR/$DATE-$TOPIC.md"