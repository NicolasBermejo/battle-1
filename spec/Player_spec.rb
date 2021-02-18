require 'Player.rb'

describe Player do
  subject(:ian) { Player.new('Ian') }
  subject(:anna) { Player.new('Anna') }

  describe '#name' do
    it 'returns its name' do
      expect(ian.name).to eq('Ian')
    end
  end

  describe '#attack' do
    it 'reduces player hp by 10' do
      ian.attack(anna)
      expect(anna.hp).to eq(50)
    end
  end
end
