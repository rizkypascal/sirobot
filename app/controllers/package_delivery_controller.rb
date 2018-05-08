class PackageDeliveryController < ApplicationController
  def create
    user = {
      'Anton Kristanto'        => {id: '@antonkristanto', chat_id: 259897111},
      'Bayu Surya Adi Saputra' => {id: '@bayusurya',      chat_id: 269804643},
      'Wasiro'                 => {id: '@wasiro',         chat_id: 76115512},
      'Rizky Paskalis Totong'  => {id: '@rizkypascal',    chat_id: 323049531}
    }

    username = user[params[:full_name]][:id]
    chat = user[params[:full_name]][:chat_id]
    Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
      bot.api.send_message(chat_id: chat, text: "Halo pengiriman paket untuk #{username} sudah dikirimkan ya, silakan cek detailnya di @frontliner_bot")
    end
    render :json => params
  end
end
