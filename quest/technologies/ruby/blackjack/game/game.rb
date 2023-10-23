# frozen_string_literal: true

require_relative "./config.rb"
require_relative "../card/deck.rb"
require_relative "../player/player.rb"
require_relative "../player/dealer.rb"
require_relative "../player/cpu_player.rb"
require_relative "../player/control_player.rb"

class Game
  attr_reader :all_players
  def initialize(config)
    @deck = Deck.new
    @control_player = ControlPlayer.new(config.player_name, config)
    cpu_players = []
    config.cpu_player_names.map do |name|
      cpu_players << CpuPlayer.new(name)
    end
    @dealer = Dealer.new("ディーラー")
    @all_players = [@control_player, *cpu_players, @dealer]
    @control_player.all_players = @all_players
    game_start()
  end

  private
    # ゲーム実行メソッド
    def game_start
      puts "ブラックジャックを開始します。"

      # プレイヤーの初期行動
      @all_players.each do |player|
        player&.player_start(@deck)
      end

      # プレイヤーのターン
      @all_players.each do |player|
        player&.player_action(@deck)
      end

      # 勝敗判定
      jadge(@all_players, @dealer)
      puts "ブラックジャックを終了します。"
    end

    # 勝敗判定をするメソッド
    def jadge(all_players, dealer)
      winners = [] # 勝利プレイヤーを格納
      drawers = [] # 引き分けプレイヤーを格納
      participants = all_players - [dealer]
      surrenders = [*participants.select { |participant| participant.is_surrender }] # サレンダーしたプレイヤーを格納
      participants -= surrenders # サレンダーしたプレイヤーを取り除く

      # 残りのプレイヤーとディーラーの得点を表示
      all_players = [*participants, dealer]
      all_players.each do |player|
        puts "#{player.name}の得点は#{player.score}です。#{"バーストしました。" if player.bust?}"
      end

      # バーストしているプレイヤーがいない場合
      if all_players.select { |player| player.bust? }.nil?
        winners = participants.select { |participant| participant.score > dealer.score }
        drawers = participants.select { |participant| participant.score == dealer.score }

      # バーストしているプレイヤーがいる場合
      else

        # ディーラーがバーストしている場合（バーストしていないプレイヤーが勝利）
        if dealer.bust?
          winners = participants.select { |participant| !participant.bust? }

        # ディーラーがバーストしていない場合
        # （バーストしていない かつ ディーラーより得点の高いプレイヤーが勝利
        else
          winners = participants.select { |participant| !participant.bust? && participant.score > dealer.score }
          drawers = participants.select { |participant| !participant.bust? && participant.score == dealer.score }
        end
      end
      # 勝利、引き分け以外のプレイヤーを敗北プレイヤーとする
      losers = participants - winners - drawers - surrenders

      winners.each do |participant|
        puts "#{participant.name}の勝ちです！"
      end
      losers.each do |participant|
        puts "#{participant.name}の負けです..."
      end
      drawers.each do |participant|
        puts "#{participant.name}は引き分けです"
      end
      surrenders.each do |participant|
        puts "#{participant.name}はサレンダーしています"
      end
    end
end
