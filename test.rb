require "slack-notify"
require 'dotenv/load'

client = SlackNotify::Client.new(webhook_url: ENV["SLACK_WEBHOOK_URL"])

client.notify("Hello There!")
