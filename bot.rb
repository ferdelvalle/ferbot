require 'telegram/bot'
require_relative '../ferbot/ferbot/lib/logic'
token = '877177203:AAE5tNPbYDt62BTzlWxG02FzYhe6uqQHu88'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/food'
      recommendation = Dishes.recommend
      
      bot.api.send_message(chat_id: message.chat.id, text: "What about #{recommendation[0]}? It's a great #{recommendation[1]} dish!")

    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end