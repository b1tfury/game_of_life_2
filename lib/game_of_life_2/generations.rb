module Universe
  class Generations
    attr_reader :current_generation
    def initialize(gen)
      @current_generation = gen
      @next_generation = []
    end

    def next_generation
      [[-1, 0],[0, 0],[1, 0]]
    end
  end
end
