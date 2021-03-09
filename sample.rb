require 'dotenv/load'
require "slack-notify"
require 'clockwork'

module Clockwork
    handler do |job|
        sample = SlackNotify::Client.new(
          webhook_url: ENV["SLACK_WEBHOOK_URL"]
        )
        sample.notify("3分に1回送信")
    end
    every(3.minutes, 'less.frequent.job')
end
