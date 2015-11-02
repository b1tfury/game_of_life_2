require 'spec_helper'

module Universe
  describe Cell do
    ALIVE = 'ALIVE'
    DEAD = 'DEAD'
    context 'Alive or Dead' do
      it 'Live cell says I am alive' do
        expect(Cell.new(ALIVE).is_alive?).to eq(true)
      end
    end
  end
end