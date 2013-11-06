require_relative "../lib/rps/player"

module RPS
  class QueuePlayer < Player
    QUEUE = [ :rock,
              :scissors,
              :scissors ]

    def initialize( opponent )
      super
      @index = 0
    end

    def choose
      choice = QUEUE[@index]

      @index += 1
      @index = 0 if @index == QUEUE.size

      choice
    end
  end
end
