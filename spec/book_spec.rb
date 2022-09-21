require_relative 'spec_helper'

RSpec.describe 'Book' do
  before :each do
    @book = Book.new('Publisher', '2000-10-09', 'bad')
  end

  context 'create a book' do
    it 'should create an instance of Book' do
      expect(@book).to be_instance_of Book
    end

    it 'should return Publisher, 2000-10-09 as a publish_date and bad as cover state' do
      expect(@book.publisher).to eq 'Publisher'
      expect(@book.publish_date.to_s).to eq '2000-10-09'
    end
  end

  context 'check method overriding'
  it 'should return false due to "bad" cover_state' do
    expect(@book.can_be_archived?).to be false
  end

  it 'should return true after cover_state got a new value "perfect"' do
    @book.cover_state = 'perfect'
    expect(@book.can_be_archived?).to be true
  end
end
