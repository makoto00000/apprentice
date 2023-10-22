# frozen_string_literal: true

require_relative "./game/config.rb"
require_relative "./game/game.rb"

def start_game
  config = Config.new
  Game.new(config)
end

start_game()
