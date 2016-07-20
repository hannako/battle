require 'player'

describe Player do
  describe '#name' do
    subject(:oggie) { Player.new('Oggie') }

    it 'returns Player name' do
      expect(oggie.name).to eq('Oggie')
    end
  end
end
