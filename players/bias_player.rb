require_relative "../lib/rps/player"

module RPS
  class BiasPlayer < Player

    def initialize(opponent)
      super
      @biases = {rock: 0, scissors: 0, paper: 0}
    end

    def choose
      n = ::Kernel.rand( total(:rock, :scissors, :paper) ).to_i 
      case n
      when 0..@biases[:rock]
        :paper
      when @biases[:rock]..total(:rock, :scissors)
        :rock
      when total(:rock, :scissors)..total(:rock, :scissors, :paper) 
        :scissors
      else
        p total(:rock, :scissors)..@biases[:paper]
        abort n.to_s
      end 
    end

    def result(you, them, win_lose_or_draw)
      @biases[them] += 1
    end

    private
    def total(*biases)
      biases.inject(0) { |sum, bias| sum + @biases[bias] }
    end
  end
end
