class Kopi < ApplicationRecord
  belongs_to :roast
  belongs_to :origin
  belongs_to :user
  has_many :order
  has_and_belongs_to_many :customers

  def self.order_list(sort_order)
    if sort_order == "popularity_asc"
      Kopi.select("kopis.id, kopis.name, kopis.roast_id, kopis.origin_id, kopis.price, COUNT(customers_kopis.customer_id)").joins(:kopis_customers).group("kopis.id").order(count: :asc)
    elsif sort_order == "popularity_desc"
      Kopi.select("kopis.id, kopis.name, kopis.roast_id, kopis.origin_id, kopis.price, COUNT(customers_kopis.customer_id)").joins(:kopis_customers).group("kopis.id").order(count: :desc)
    elsif sort_order == "name_asc"
      order(name: :asc)
    elsif sort_order == "name_desc"
      order(name: :desc)
    elsif sort_order == "roast_asc"
      Kopi.joins("INNER JOIN roasts ON roasts.id = kopis.roast_id").order(kind: :asc)
    elsif sort_order == "roast_desc"
      Kopi.joins("INNER JOIN roasts ON roasts.id = kopis.roast_id").order(kind: :desc)
    elsif sort_order == "origin_asc"
      Kopi.joins("INNER JOIN origins ON origins.id = kopis.origin_id").order(location: :asc)
    elsif sort_order == "origin_desc"
      Kopi.joins("INNER JOIN origins ON origins.id = kopis.origin_id").order(location: :desc)
    elsif sort_order == "price_asc"
      order(price: :asc)
    elsif sort_order == "price_desc"
      order(price: :desc)
    else
      order(created_at: :asc)
    end
  end
end