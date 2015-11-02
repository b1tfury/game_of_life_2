module Universe
  class SurvivabilityRules
    def initialize(cell, generations)
      @cell = cell
      @generation = generations.current_generation
    end

    def will_live?
      neigbours = @cell.neighbours
      count = 0
      neigbours.each do |cell|
        if @generation.include?(cell)
          count += 1
        end
      end
      if @cell.is_alive?
       if count < 2
            false
       elsif count == 2 || count == 3
         true
       elsif count > 3
         false
       end
      elsif @cell.is_dead?
        if count == 3
          true
        end
      end
    end
  end
end