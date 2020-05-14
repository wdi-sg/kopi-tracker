class Order < ApplicationRecord
  belongs_to :kopi

  def self.order_list(sort_order)
    if sort_order == "cost_asc"
      order(weight: :asc)
    elsif sort_order == "cost_desc"
      order(weight: :desc)
    elsif sort_order == "name_asc"
      order(name: :asc)
    elsif sort_order == "name_desc"
      order(name: :desc)
    else
      order(id: :asc)
    end
  end
end