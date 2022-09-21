require 'date'

# Main super class
class Item
  attr_accessor :publish_date, :author, :source, :genre, :label
  attr_reader :id, :archived

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = Date.parse(publish_date)
    @archived = false
    # 1-to-many relationships
    @author = 'unknown'
    @source = 'unknown'
    @label = 'unknown'
    @genre = 'unknown'
  end

  def move_to_archive
    return @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    ten_years_ago = Date.today - 3600
    @publish_date <= ten_years_ago
  end
end

#
# TEST CLASS
#
# item = Item.new('2022-01-02')
# item2 = Item.new('2010-01-02')
#
# puts item.can_be_archived?
# puts item2.can_be_archived?
#
# puts item.move_to_archive
# puts item2.move_to_archive
#
# puts item.archived
# puts item2.archived
