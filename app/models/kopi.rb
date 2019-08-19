class Kopi < ApplicationRecord
  paginates_per 6
  belongs_to :origin
  belongs_to :roast
  belongs_to :user
  validates :name, presence: true
  has_many :order, dependent: :destroy

  def self.order_list(sort_order, user_id)
    if sort_order == "all" || sort_order.blank?
      order(created_at: :desc)
    elsif sort_order == "user"
      where(user_id: user_id).order(created_at: :desc)
    elsif sort_order == "name"
      order(name: :asc)
    else
      order(created_at: :asc)
    end
  end
end