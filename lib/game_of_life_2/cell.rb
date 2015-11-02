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

    def is_dead?
      if @state == 'DEAD'
        true
      else
        false
      end
    end
  end
end