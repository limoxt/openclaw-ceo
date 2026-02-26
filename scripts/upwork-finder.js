#!/usr/bin/env node
/**
 * Upwork Opportunity Finder
 * Searches for high-value AI agent/automation projects
 */

const KEYWORDS = ['AI agent', 'automation', 'Claude', 'OpenClaw', 'LLM workflow', 'n8n', 'Make.com'];
const MIN_BUDGET = 500;

// Search URLs for manual scanning
const SEARCH_URLS = {
  upwork: `https://www.upwork.com/nx/jobs/search/?q=${encodeURIComponent(KEYWORDS.join(' OR '))}&amount=${MIN_BUDGET}-5000&sort=recency`,
  fiverr: 'https://www.fiverr.com/search/gigs?query=ai%20automation',
  producthunt: 'https://www.producthunt.com/search?q=ai%20agent'
};

console.log('=== AI AGENT OPPORTUNITY SCAN ===');
console.log(`Time: ${new Date().toISOString()}`);
console.log(`Keywords: ${KEYWORDS.join(', ')}`);
console.log(`Min Budget: $${MIN_BUDGET}`);
console.log('');

console.log('🔍 Quick Links:');
Object.entries(SEARCH_URLS).forEach(([platform, url]) => {
  console.log(`  ${platform}: ${url}`);
});

console.log('');
console.log('💡 Action Items:');
console.log('  1. Open Upwork link, filter by "Fixed Price" + "$500+"');
console.log('  2. Look for keywords: AI agent, automation, Claude, workflow');
console.log('  3. Save promising jobs to prospects.json');
console.log('  4. Draft proposals within 2 hours of posting');
console.log('');

// Save scan timestamp
const fs = require('fs');
const scanLog = {
  timestamp: new Date().toISOString(),
  keywords: KEYWORDS,
  minBudget: MIN_BUDGET,
  urls: SEARCH_URLS
};

fs.writeFileSync('data/last-scan.json', JSON.stringify(scanLog, null, 2));
console.log('✅ Scan logged to data/last-scan.json');