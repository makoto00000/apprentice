# frozen_string_literal: true

require_relative "../player/player.rb"
require_relative "../player/dealer.rb"
require_relative "../card/deck.rb"

class Game
  def initialize(config)
    @deck = Deck.new
    @player = config.player
    @players = [@player, *config.cpu_players]
    @dealer = Dealer.new("ディーラー")
    @all_players = [@player, *config.cpu_players, @dealer]
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
      jadge(@players, @dealer)
      puts "ブラックジャックを終了します。"
    end

    # 勝敗判定をするメソッド
    def jadge(players, dealer)
      # プレイヤーとディーラーの得点を表示
      all_players = [*players, dealer]
      all_players.each do |player|
        puts "#{player.name}の得点は#{player.score}です。"
      end

      winners = [] # 勝利プレイヤーを格納
      drawers = [] # 引き分けプレイヤーを格納

      # バーストしているプレイヤーがいない場合
      if all_players.select { |player| player.bust? }.nil?
        winners = players.select { |player| player.score > dealer.score }
        drawers = players.select { |player| player.score == dealer.score }

      # バーストしているプレイヤーがいる場合
      else

        # ディーラーがバーストしている場合（バーストしていないプレイヤーが勝利）
        if dealer.bust?
          winners = players.select { |player| !player.bust? }

        # ディーラーがバーストしていない場合
        # （バーストしていない かつ ディーラーより得点の高いプレイヤーが勝利
        else
          winners = players.select { |player| !player.bust? && player.score > dealer.score }
          drawers = players.select { |player| !player.bust? && player.score == dealer.score }
        end
      end
      # 勝利、引き分け以外のプレイヤーを敗北プレイヤーとする
      losers = players - winners - drawers

      winners.each do |player|
        puts "#{player.name}の勝ちです！"
      end
      losers.each do |player|
        puts "#{player.name}の負けです..."
      end
      drawers.each do |player|
        puts "#{player.name}は引き分けです"
      end
    end
end
