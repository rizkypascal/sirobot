class GuestsController < ApplicationController
  def notify
    Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
      bot.api.send_message(chat_id: ENV['BOT_GROUP'], text: "Welcome to SIROBOT")
    end
    render :json => params
  end
end
