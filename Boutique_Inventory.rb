class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name]}.sort
  end

  def cheap
    @items.select {|item| item[:price] < 30 }
  end

  def out_of_stock
    @items.select {|item| item[:quantity_by_size].empty?}
  end

  def stock_for_item(name)
   stock = @items.select {|item| item[:name] == name && !item[:quantity_by_size].empty?}
    stock.empty? ? stock : stock.first[:quantity_by_size]
  end

  def total_stock
    money = 0
    if items.empty?
      return money
    else
     items.each do |item|
      item[:quantity_by_size].each { |_, qty| money += qty if qty > 0  }
       return money
     end
    end
  end

  private
  attr_reader :items
end
