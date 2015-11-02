require 'spec_helper'

module Universe
  describe Cell do
    ALIVE = 'ALIVE'
    DEAD = 'DEAD'
    context 'Alive Cell says I am ' do
      it 'alive' do
        expect(Cell.new(ALIVE).is_alive?).to eq(true)
      end

      it 'not dead' do
        expect(Cell.new(ALIVE).is_alive?).not_to eq(false)
      end
    end

    context 'Dead Cell says I am ' do
      it 'dead' do
        expect(Cell.new(DEAD).is_dead?).to eq(true)
      end
    end
  end
end