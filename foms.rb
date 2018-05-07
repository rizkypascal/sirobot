require 'telegram/bot'
require 'dotenv/load'

Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
  bot.listen do |message|
    case message.text
    when /^\/check_package +(.+) +(.+)$/
      resi = $1
      kurir = $2
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, detail info pengiriman paket kamu sebagai berikut:\nNama: Anton Kristanto\nNomor Resi: #{resi}\nPengirim: MakeUpOlShop\nKurir: #{kurir}")
    end
  end
end