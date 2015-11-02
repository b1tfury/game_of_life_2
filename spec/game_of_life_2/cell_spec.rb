require 'spec_helper'

module Universe
  describe Cell do
    ALIVE = 'ALIVE'
    DEAD = 'DEAD'
    context 'Alive Cell says I am ' do
      it 'alive' do
        expect(Cell.new(1, 2, ALIVE).is_alive?).to eq(true)
      end

      it 'not dead' do
        expect(Cell.new(1, 2, ALIVE).is_alive?).not_to eq(false)
      end
    end

    context 'Dead Cell says I am ' do
      it 'dead' do
        expect(Cell.new(1, 2, DEAD).is_dead?).to eq(true)
      end

      it 'not alive' do
        expect(Cell.new(1, 2, DEAD).is_dead?).not_to eq(false)
      end
    end

    context 'Cell says I have' do
      it 'a position in cartesian plane' do
        expect(Cell.new(1, 2, ALIVE).position).to eq([1, 2])
      end

      it 'eight neighbours' do
        expect(Cell.new(1, 2, ALIVE).neighbours).to match_array([[0, 3],[1, 3],[2, 3],[2, 2],[2, 1],[1, 1],[0, 1],[0, 2]])
      end
    end
  end
end