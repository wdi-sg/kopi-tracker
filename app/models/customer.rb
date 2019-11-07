class Customer < ActiveRecord::Base
  has_and_belongs_to_many :kopis

  validates :name, presence:true


  validate :has_one_kopi_at_least

  def has_one_kopi_at_least
    if kopi_ids.empty?
      errors.add(:kopi_ids, "You need to add at least one kopi!")
    end
  end
end