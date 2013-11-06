require_relative "../lib/rps/player"

module RPS
  class CheatingPlayer < Player
    def initialize(opponent)
      Object.const_get(opponent).class_eval do
        alias_method :old_choose, :choose
        def choose
          :paper
        end
      end
    end

    def choose
      :scissors
    end
  end
end
