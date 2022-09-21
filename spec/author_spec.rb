require_relative 'spec_helper'

describe Author do
  let(:author) { Author.new('Shaheer', 'Chaudry') }
  let(:apex) { Game.new('2013-03-05', false, '2020-02-02') }
  let(:fortnite) { Game.new('2014-07-02', true, '2020-02-02') }

  describe '#author' do
    it 'return an instance of author class' do
      expect(author).to be_an_instance_of(Author)
    end

    it 'return authors first name' do
      expect(author.first_name).to eq('Shaheer')
    end

    it 'return authors last name' do
      expect(author.last_name).to eq('Chaudry')
    end

    it 'return an array of items' do
      expect(author.items).to be_an_instance_of(Array)
    end
  end

  describe '#add_item' do
    it 'add the author to the item' do
      author.add_item(apex)
      expect(apex.author).to eq(author)
    end

    it 'add an item to the author' do
      author.add_item(apex)
      expect(author.items).to include(apex)
    end

    it 'return number of elements in the array' do
      author.add_item(apex)
      author.add_item(fortnite)
      expect(author.items).to include(apex, fortnite)
      expect(author.items.size).to eql(2)
    end

    it 'should return an array of items' do
      author.add_item(apex)
      author.add_item(fortnite)
      expect(author.items).to be_an_instance_of(Array)
    end
  end
end
