class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def total
    total = 0
    line_items.each do |li|
      total += li.quantity * li.item.price
    end
    total
  end

  def add_item(item_id)
    item = Item.find(item_id)
    if items.include?(item)
      li = line_items.where(item_id: item_id).first
      li.quantity += 1
      li.save
    else
      li = LineItem.new

      li.cart = self
      li.item_id = item_id
    end
    li
  end
end
