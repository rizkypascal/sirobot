class PackageDeliveryController < ApplicationController

  def create
    user = {
      'Anton Kristanto' => '@antonkristanto',
      'Bayu Surya Adi Saputra' => '@bayusurya',
      'Wasiro' => '@Wasiro',
      'Rizky Paskalis Totong' => '@rizkypascal'
    }
    Rails.logger.info(tags: 'test-package', message: params.to_json)
    username = user[params[:full_name]]
    Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
      bot.api.send_message(chat_id: ENV['BOT_GROUP'], text: "Halo Pengiriman untuk #{username} sudah dikirimkan ya, silakan cek detailnya di @frontliner_bot")
    end
    render :json => params
  end

  def show

  end
end
