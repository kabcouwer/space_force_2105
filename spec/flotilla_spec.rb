require 'rspec'
require './lib/person'
require './lib/spacecraft'
require './lib/flotilla'

RSpec.describe Flotilla do
  describe 'instantiates' do
    it 'exists' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla).to be_a(Flotilla)
    end

    it 'has readable attributes' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla).to eq('Kathy Chan')
      expect(seventh_flotilla).to eq(10)
      expect(seventh_flotilla).to eq([])
    end
  end

end
