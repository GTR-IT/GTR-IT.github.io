#!/bin/bash
# One-shot Dunelm reminder
BOT_TOKEN="8384000594:AAFRaG38tl8zsb5x3szrLvIhEFXXv308Mao"
CHAT_ID="8573455395"
MESSAGE="🛏️ Reminder: head to Dunelm on Halifax Road, Sheffield to look at fitted sheets.

You need:
• King Size (150cm wide, 25cm deep) — at least 2
• Standard Double (135cm wide, 30cm deep) — at least 2"

curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
  -d "chat_id=${CHAT_ID}" \
  -d "text=${MESSAGE}" \
  -d "parse_mode=HTML"

# Remove this cron job after running
crontab -l | grep -v "dunelm-reminder.sh" | crontab -
