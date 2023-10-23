# frozen_string_literal: true

require_relative "../player/cpu_player.rb"

class Config
  attr_reader :player_name, :cpu_player_names, :is_doubledown, :is_split, :is_surrender
  def initialize
    @player_name
    @cpu_player_names = []
    @is_doubledown
    @is_split
    @is_surrender
    exec_config()
  end

  # 設定を実行するメソッド
  def exec_config
    puts "ゲームの設定を行います。"
    config_player()
    config_cpu_player()
    config_rules()
    puts "ゲームの設定が完了しました。"
  end

  private
    # プレイヤーに関する設定実行メソッド
    def config_player
      puts "あなたの名前を入力してください。"
      name = gets.chomp
      name = "名無しさん" if name == ""
      @player_name = name
    end

    # CPUに関する設定実行メソッド
    def config_cpu_player
      # CPUの人数を設定
      cpu_count = 0
      loop do
        puts "CPUの人数を選択してください( 0 / 1 / 2 / 3 )"
        input = gets.to_i
        if input == 0 || input == 1 || input == 2 || input == 3
          cpu_count = input
          break
        else
          puts "( 0 / 1 / 2 / 3 )を入力してください。"
        end
      end

      # CPUの名前を設定
      if !cpu_count.zero?
        names = []
        for i in 1..cpu_count do
          puts "#{i}番目のCPUの名前を入力してください。"
          names << gets.chomp
        end
        names.map!.with_index { |name, i| name == "" ? "CPU #{i + 1}" : name }
        names.each do |name|
          @cpu_player_names << name
        end
        puts "CPU:#{@cpu_player_names.map { |name| name }}を入れてゲームを実行します。"
      else
        puts "#CPUなしでゲームを実行します。"
      end
    end

    def config_rules
      puts "追加ルールの設定を行います。"
      rules = %W[ダブルダウン スプリット サレンダー]
      is_rules = []
      rules.each do |rule|
        loop do
          puts "#{rule}を追加しますか( Y / N )"
          select = gets.chomp
          case select
          when "Y"
            is_rules << true
            break
          when "N"
            is_rules << false
            break
          else
            puts "( Y / N )で入力してください"
          end
        end
      end
      @is_doubledown, @is_split, @is_surrender = is_rules
    end
end
