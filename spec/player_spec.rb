require 'player'

describe Player do
  subject(:oggie) { Player.new('Oggie') }
  subject(:joe) { Player.new('Joe') }

  describe '#name' do
    it 'returns Player name' do
      expect(oggie.name).to eq('Oggie')
    end
  end

  describe '#hit_points' do
    it 'return players hit points when attacked' do
      expect(joe.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(oggie).to receive(:receive_damage)
      joe.attack(oggie)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { oggie.receive_damage }.to change { oggie.hit_points }.by(-10)
    end
  end


end
