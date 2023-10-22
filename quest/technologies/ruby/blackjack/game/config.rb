# frozen_string_literal: true

require_relative "../player/cpu_player.rb"

class Config
  attr_reader :player, :cpu_players
  def initialize
    @player
    @cpu_players = []
    exec_onfig()
  end

  # 設定を実行するメソッド
  def exec_config
    puts "ゲームの設定を行います。"
    config_player()
    config_cpu_player()
    puts "ゲームの設定が完了しました。"
  end

  private
    # プレイヤーに関する設定実行メソッド
    def config_player
      puts "あなたの名前を入力してください。"
      name = gets.chomp
      name = "名無しさん" if name == ""
      @player = Player.new(name)
      puts "ようこそ#{@player.name}さん!"
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
          @cpu_players << CpuPlayer.new(name)
        end
        puts "CPU:#{@cpu_players.map { |cpu| cpu.name }}を入れてゲームを実行します。"
      else
        puts "#CPUなしでゲームを実行します。"
      end
    end
end
