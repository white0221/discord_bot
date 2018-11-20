require 'discordrb'

TOKEN = ENV['TOKEN']
CLIENT_ID = ENV['CLIENT_ID']
bot = Discordrb::Commands::CommandBot.new(
    token: TOKEN,
    cliend_id: CLIENT_ID,
    prefix: '/'
)

name = 'Masukura'
bot.command :hello do |event|
    event.send_message("Hi, #{name}!")
end



bot.command :bob do |event|
    event.send_message("I'm Bob.")
end

bot.run