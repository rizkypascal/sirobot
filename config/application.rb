require_relative 'boot'

require 'rails/all'

require 'telegram/bot'
require 'dotenv/load'
require 'pry'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sirobot
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
    #   bot.listen do |message|
    #     case message.text
    #     when /^\/check_package +(.+) +(.+)$/
    #       resi = $1
    #       kurir = $2
    #       bot.api.send_message(chat_id: message.chat.id, text: "Hello, detail info pengiriman paket kamu sebagai berikut:\nNama: Wasiro\nNomor Resi: #{resi}\nPengirim: MakeUpOlShop\nKurir: #{kurir}")
    #     end
    #   end
    # end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
