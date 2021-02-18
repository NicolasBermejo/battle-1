require './lib/Game.rb'

describe Game do
  subject(:subject) { Game.new('Ian', 'Anna') }
  describe '#attack' do
    let(:player1) {double :player}
    let(:player2) {double :player}

    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
  end
end
