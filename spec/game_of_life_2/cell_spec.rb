require 'spec_helper'

module Universe
  describe Cell do
    ALIVE = 'ALIVE'
    DEAD = 'DEAD'
    generation = Generations.new([[0, 0],[1, 0],[-1, 0]])
    context 'Alive Cell says I am ' do
      it 'alive' do
        expect(Cell.new(1, 2, ALIVE, generation).is_alive?).to eq(true)
      end

      it 'not dead' do
        expect(Cell.new(1, 2, ALIVE, generation).is_alive?).not_to eq(false)
      end
    end

    context 'Dead Cell says I am ' do
      it 'dead' do
        expect(Cell.new(1, 2, DEAD, generation).is_dead?).to eq(true)
      end

      it 'not alive' do
        expect(Cell.new(1, 2, DEAD, generation).is_dead?).not_to eq(false)
      end
    end

    context 'Cell says I have' do
      it 'a position in cartesian plane' do
        expect(Cell.new(1, 2, ALIVE, generation).position).to eq([1, 2])
      end

      it 'eight neighbours' do
        neighbours = []
        live_cells = generation.current_generation
        range = [-1, 0, 1]
        range.each do |x|
          range.each do |y|
            cell = Cell.new(1 + x, 2 + y, ALIVE, generation)
            if !(x == y && x == 0)
              if live_cells.include? cell
                neighbours << cell
              else
                cell = Cell.new(1 + x, 2 + y, DEAD, generation)
                neighbours << cell
              end
            end
          end
        end
        expect(Cell.new(1, 2, ALIVE, generation).neighbours).to match_array(neighbours)
      end
    end

    context 'comparing two cells' do
      it 'if posotion ,state and generation is same then cells are equal' do
        expect(Cell.new(1, 2, ALIVE, generation)).to eq(Cell.new(1, 2, ALIVE, generation))
      end

      it 'cell should be compared with another cell only' do
        expect(Cell.new(1, 2, ALIVE, generation)).not_to eq(Object.new)
      end

      it 'comparison with nil' do
        expect(Cell.new(1, 2, ALIVE, generation)).not_to eq(nil)
      end
    end
  end
end