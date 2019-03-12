require './handlers/hello_lita.rb'

Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "ExodiaNorris"
  config.robot.mention_name = "exodianorris"
  config.robot.alias = "/"

  config.robot.log_level = :info
  config.robot.adapter = :shell

  if ENV['REDISTOGO_URL']
    config.redis[:url] = ENV['REDISTOGO_URL']
  end

  if ENV['PORT']
    config.http.port = ENV['PORT']
  end

  #config.robot.adapter = :telegram
  #config.adapters.telegram.telegram_token = ENV['TELEGRAM_TOKEN']

  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234
end
