module Universe
  class Cell
    ALIVE = 'ALIVE'
    DEAD = 'DEAD'
    def initialize(state)
      @state = state
    end

    def is_alive?
      if @state == 'ALIVE'
        true
      else
        false
      end
    end
  end
end