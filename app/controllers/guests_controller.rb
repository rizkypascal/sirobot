class GuestsController < ApplicationController
  def notify
    user = {
      'Anton Kristanto' => '@antonkristanto',
      'Bayu Surya Adi Saputra' => '@bayusurya',
      'Wasiro' => '@Wasiro',
      'Rizky Paskalis Totong' => '@rizkypascal'
    }
    username = user[params[:full_name]]
    guess = params[:guess]
    institution = params[:institution]
    need = params[:need]
    Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
      bot.api.send_message(chat_id: ENV['BOT_GUESS_GROUP'], text: "Halo #{username}, Saudara/Saudari #{guess} dari #{institution} untuk keperluan #{need} telah tiba")
    end
    render :json => params
  end
end
