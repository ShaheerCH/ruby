require_relative 'item'

class Book < Item
  attr_accessor :cover_state, :publisher

  def initialize(publisher, publish_date, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return super unless @cover_state == 'bad'

    false
  end
end

# test book class
book1 = Book.new('Publisher', '2001-03-10', 'NoCover')
puts book1.cover_state
puts book1.publish_date
puts book1.id

book1.cover_state = 'bad'
puts book1.can_be_archived?
