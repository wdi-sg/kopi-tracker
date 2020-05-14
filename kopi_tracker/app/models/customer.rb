class Customer < ApplicationRecord
  has_and_belongs_to_many :kopis

  def self.order_list(sort_order)
    if sort_order == "kopi_num_asc"
      Customer.select("customers.id, customers.name, COUNT(customers_kopis.customer_id)").joins(:customers_kopis).group("customers.id").order(count: :asc)
    elsif sort_order == "kopi_num_desc"
      Customer.select("customers.id, customers.name, COUNT(customers_kopis.customer_id)").joins(:customers_kopis).group("customers.id").order(count: :desc)
    else
      order(created_at: :asc)
    end
  end
end

#@resources = Resouce.select("resources.*, COUNT(votes.id) vote_count")
                    #.joins(:votes)
                    #.where(language_id: "ruby")
                    #.group("resources.id")

#SELECT COUNT(customers_kopis.customer_id) FROM customers INNER JOIN customers_kopis ON customers.id = customers_kopis.customer_id GROUP BY customers.id ORDER BY count ASC;