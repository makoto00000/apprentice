# frozen_string_literal: true

require_relative "../card/deck.rb"
require_relative "../card/card.rb"

class Player
  attr_reader :name, :config, :score, :is_surrender, :is_doubledown
  # control_playerクラスのselect_splitメソッド内で変更を加えるため↓
  attr_accessor :hand_cards, :is_split
  def initialize(name)
    @name = name
    @score = 0
    @hand_cards = []
    @is_surrender = false
    @is_doubledown = false
    @is_split = false
  end

  # 初期行動をまとめたメソッド
  def player_start(deck)
    2.times { draw_card(deck) }
    for i in 0..1 do
      open_card(i)
    end
  end

  def player_action # 各子クラスでオーバーライド
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
      calc_score
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
