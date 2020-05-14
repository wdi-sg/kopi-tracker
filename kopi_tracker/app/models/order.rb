class Order < ApplicationRecord
  belongs_to :kopi

  def self.order_list(sort_order)
    if sort_order == "kopi_asc"
      Order.joins("INNER JOIN kopis ON orders.kopi_id = kopis.id").order(name: :asc)
    elsif sort_order == "kopi_desc"
      Order.joins("INNER JOIN kopis ON orders.kopi_id = kopis.id").order(name: :desc)
    elsif sort_order == "cost_asc"
      Order.joins("INNER JOIN kopis ON orders.kopi_id = kopis.id").order(weight: :asc, price: :asc)
    elsif sort_order == "cost_desc"
      Order.joins("INNER JOIN kopis ON orders.kopi_id = kopis.id").order(weight: :desc, price: :desc)
    else
      order(created_at: :asc)
    end
  end
end