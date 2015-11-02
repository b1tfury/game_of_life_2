module Universe
  class Cell
    ALIVE = 'ALIVE'
    DEAD = 'DEAD'
    def initialize(x, y, state)
      @x = x
      @y = y
      @state = state
    end

    def position
      [@x,@y]
    end

    def neighbours
      [[0, 3],[1, 3],[2, 3],[2, 2],[2, 1],[1, 1],[0, 1],[0, 2]]
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