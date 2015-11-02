require 'spec_helper'

module Universe
  describe Generations do
    it 'current generation' do
      current_gen = [[0, -1],[0, 0],[0, 1]]
      expect(Generations.new(current_gen).current_generation).to eq(current_gen)
    end
  end
end