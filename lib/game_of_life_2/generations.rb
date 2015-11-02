module Universe
  class Generations
    attr_reader :current_generation , :next_generation
    def initialize(gen)
      @current_generation = gen
      @next_generation = []
    end
  end
end
