class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items


  end


  def item_names
    items.map { |item| item[:name] }.sort

    raise "Refactor the code in item_names"
  end

  def total_stock
    items.sum do |item|
      item[:quantity_by_size].values.sum
    end

    raise "Refactor the code in total_stock"
  end
end

fun = BoutiqueInventory.new()
