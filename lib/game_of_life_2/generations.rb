module Universe
  class Generations

    attr_accessor :current_generation, :number

    def initialize(num)
      @number = num
      @current_generation = []
      @next_generation = []
    end
  end
end
