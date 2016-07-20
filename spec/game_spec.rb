require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2)  }
  let(:player_1) { double('Player') }
  let(:player_2) { double('Player') }

  describe '#attack' do
    it 'damages your opponent' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  

  it { is_expected.to respond_to(:player_1) }

end
