require 'spec_helper'

module Universe
  describe Generations do
    it 'current generation' do
      current_gen = [[0, -1],[0, 0],[0, 1]]
      expect(Generations.new(current_gen).current_generation).to match_array(current_gen)
    end

    it 'next generation' do
      current_gen = [[0, -1],[0, 0],[0, 1]]
      expect(Generations.new(current_gen).next_generation).to match_array([[-1, 0],[0, 0],[1, 0]])
    end
  end
end