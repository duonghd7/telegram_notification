#!/bin/bash
TELEGRAM_CHAT_ID=$1
TELEGRAM_MESSAGE_TOPIC_ID=$2
TELEGRAM_MESSAGE=$3
TELEGRAM_BOT_TOKEN=$4
curl -X POST \
     -H "Content-Type: application/json" \
     -d "{\"chat_id\": ${TELEGRAM_CHAT_ID}, \"message_thread_id\": \"${TELEGRAM_MESSAGE_TOPIC_ID}\", \"text\": \"${TELEGRAM_MESSAGE}\", \"disable_notification\": false}" \
     https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage