require_relative "../lib/rps/player"

module RPS
  class RandomPlayer < Player
    def choose
      [:paper, :scissors, :rock][rand(3)]
    end
  end
end
