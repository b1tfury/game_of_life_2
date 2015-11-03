require 'spec_helper'

module Universe
  describe Generations do
    it 'current generation' do
      generation = Generations.new(1)
      cells = [Cell.new(0, 0, ALIVE, generation), Cell.new(1, 0, ALIVE, generation), Cell.new(-1, 0, ALIVE, generation)]
      generation.current_generation = cells
      expect(generation.current_generation).to match_array(cells)
    end
  end
end