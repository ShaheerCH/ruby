class Label
  attr_accessor :title, :color, :items
  attr_reader :id

  def initialize(title = 'unknown', color = 'unknown')
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = title
  end
end
