require 'spec_helper'

module Universe
  describe SurvivabilityRules do
    context 'Alive cell' do
      it 'will die if less than 2 live neighbours' do
        generation = Generations.new([[0, -1],[0, 0],[0, 1]])
        cell = Cell.new(0, 1, 'ALIVE', generation)
        expect(SurvivabilityRules.new(cell).will_live?).to eq(false)
      end

      it 'will live if 2 or 3 neighbours are alive' do
        generation = Generations.new([[0, -1],[0, 0],[0, 1]])
        cell = Cell.new(0, 0, 'ALIVE', generation)
        expect(SurvivabilityRules.new(cell).will_live?).to eq(true)
      end

      it 'will die if more than if more than 3 neighbours are alive' do
        generation = Generations.new([[0, -1],[0, 0],[0, 1],[1, 0],[-1, 0]])
        cell = Cell.new(0, 0, 'ALIVE', generation)
        expect(SurvivabilityRules.new(cell).will_live?).to eq(false)
      end
    end

    context 'Dead cell' do
      it 'becomes alive if 3 neighbours are alive' do
        generation = Generations.new([[1, 0],[0, 0],[0, 1]])
        cell = Cell.new(1, 1, 'DEAD', generation)
        expect(SurvivabilityRules.new(cell).will_live?).to eq(true)
      end

      it 'should remain dead if less than 3 neighbhours are alive ' do
        generation = Generations.new([[1, 0],[0, 0],[0, 1]])
        cell = Cell.new(1, 1, 'DEAD', generation)
        expect(SurvivablitiyRules.new(cell).will_live?).not_to eq(true)
      end
    end
  end
end