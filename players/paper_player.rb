require_relative "../lib/rps/player"

module RPS
  class PaperPlayer < Player
    def choose
      :paper
    end
  end
end
