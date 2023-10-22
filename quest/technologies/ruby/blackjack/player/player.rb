# frozen_string_literal: true

require_relative "../card/deck.rb"
require_relative "../card/card.rb"

class Player
  attr_reader :name, :score, :hand_cards
  def initialize(name)
    @name = name
    @score = 0
    @hand_cards = []
  end

  # プレイヤーの初期行動をまとめたメソッド
  def player_start(deck)
    self.draw_card(deck)
    self.open_card(0)
    self.draw_card(deck)
    self.open_card(1)
  end

  # プレイヤーのターンを進行するメソッド
  def player_action(deck)
    counter = 1
    loop do
      puts "#{open_score} カードを引きますか？（Y / N）"
      case gets.chomp
      when "Y" # Yが選択されたとき
        counter += 1
        draw_card(deck)
        open_card(counter)
        # バーストしたときの処理
        if bust?
          puts "#{open_score} バーストしました。"
          break
        end
      when "N" # Nが選択されたとき
        break
      else
        puts "(Y / N)で入力してください"
      end
    end
  end

  # バースト判定用boolean
  def bust?
    @score > 21
  end

  private
    # デッキからカードを引くメソッド
    def draw_card(deck)
      @hand_cards << deck.draw_card
      calc_score # 引いたカードを含めて得点を計算
      re_calc_ace if bust? # バーストした場合Aカードを再計算
    end

    # オープンしたカードを公開するメソッド
    def open_card(i)
      puts "#{@name}の引いたカードは#{@hand_cards[i].suit}の#{@hand_cards[i].num}です。"
    end

    # 現在の得点を表示するメソッド
    def open_score
      "#{@name}の現在の得点は#{@score}です。"
    end

    # 手札のカードの得点を計算するメソッド
    def calc_score
      @score = 0
      @hand_cards.each do |card|
        @score += card.score
      end
    end

    # Aカードを再計算するメソッド
    def re_calc_ace
      ace_card = @hand_cards.find { |card| card.score == 11 }
      if !ace_card.nil?
        ace_card.re_calc_score
        self.calc_score
      end
    end
end
