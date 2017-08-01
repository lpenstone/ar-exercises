class Store < ActiveRecord::Base
  has_many :employees
  validates :name,
          presence: true,
          length: {minimum: 3},
          uniqueness: true
  validates :annual_revenue,
          presence: true,
          numericality: {greater_than: 0}

  validate :apparel_must_exist

  def apparel_must_exist
    if womens_apparel == false && mens_apparel == false
      errors.add(:womens_apparel, "must exist")
      errors.add(:mens_apparel, "must exist")
    end
  end
end


