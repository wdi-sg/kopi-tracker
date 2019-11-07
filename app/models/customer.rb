class Customer < ActiveRecord::Base
  has_and_belongs_to_many :kopis

  validates :name, presence:true


  validate :has_one_kopi_at_least

  def has_one_kopi_at_least
    if kopi_ids.empty?
      errors.add(:kopi_ids, "need one  at least")
    end
  end
end