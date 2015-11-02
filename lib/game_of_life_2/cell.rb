module Universe
  class Cell
    ALIVE = 'ALIVE'
    DEAD = 'DEAD'
    def initialize(x, y, state)
      @x = x
      @y = y
      @state = state
      @neighbours = []
    end

    def position
      [@x,@y]
    end

    def neighbours
      range = [-1, 0, 1]
      range.each do |x|
        range.each do |y|
          if !(x == y && x == 0)
            @neighbours << [@x + x, @y + y]
          end
        end
      end
      @neighbours
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