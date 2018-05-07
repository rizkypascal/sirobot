class GuestsController < ApplicationController
  def notify
    user = {
      'Anton Kristanto' => {id: '@antonkristanto', chat_id: 259897111},
      # 'Bayu Surya Adi Saputra' => {'@bayusurya',
      # 'Wasiro' => '@Wasiro',
      'Rizky Paskalis Totong' => {id: '@rizkypascal', chat_id: 323049531}
    }
    username = user[params[:full_name]][:id]
    chat = user[params[:full_name]][:chat_id]
    guess = params[:guess]
    institution = params[:institution]
    need = params[:need]
    Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
      # bot.api.send_chat_action(chat_id: '@antonkristanto', action: 'typing')
      # bot.api.send_message(chat_id: ENV['BOT_GUESS_GROUP'], text: "Halo #{username}, Saudara/Saudari #{guess} dari #{institution} untuk keperluan #{need} telah tiba")
      bot.api.send_message(chat_id: chat, text: "Halo #{username}, Saudara/Saudari #{guess} dari #{institution} untuk keperluan #{need} telah tiba")
    end
    render :json => params
  end
end
