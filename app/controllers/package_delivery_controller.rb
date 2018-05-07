class PackageDeliveryController < ApplicationController

  user = {
    'Anton Kristanto' => '@antonkristanto',
    'Bayu Surya Adi Saputra' => '@bayusurya',
    'Wasiro' => '@Wasiro',
    'Rizky Paskalis Totong' => '@rizkypascal'
  }

  def create
    Rails.logger.info(tags: 'test-package', message: params.to_json)
    username = user[params[:full_name]]
    Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
      bot.api.send_message(chat_id: ENV['BOT_GROUP'], text: "Halo Pengiriman untuk #{username} sudah dikirimkan ya, silakan cek detailnya di bot")
    end
    render :json => params
  end

  def show
  end
end
