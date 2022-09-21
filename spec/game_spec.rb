require_relative 'spec_helper'

describe Game do
  let(:apex) { Game.new('2009-03-05', false, '2020-02-02') }
  let(:fortnite) { Game.new('2018-07-02', true, '2021-02-02') }

  describe '#game class' do
    it 'should be a game class' do
      expect(apex).to be_a(Game)
    end

    it 'should be an instance of a game' do
      expect(apex).to be_an_instance_of(Game)
    end
  end

  describe '#can_be_archived?' do
    it 'return true if published > 10yrs' do
      expect(apex.can_be_archived?).to eq(true)
      expect(fortnite.can_be_archived?).to eq(false)
    end

    it 'returns true if > 2yrs' do
      expect(apex.can_be_archived?).to eq(true)
    end
  end

  describe '#multiplayer' do
    it 'returns multiplayer' do
      expect(apex.multiplayer).to eql(false)
      expect(fortnite.multiplayer).to eql(true)
    end
  end

  describe '#last_played_at' do
    it 'returns last played' do
      expect(apex.last_played_at).to eql('2020-02-02')
    end
  end

  describe '#publish_date' do
    it 'returns the publish date' do
      expect(apex.publish_date).to eql('2018-03-05')
    end
  end
end
