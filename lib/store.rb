class Store < ActiveRecord::Base
  has_many :employees

  validates_length_of :name, :minimum => 3
  validate :gender_apparel
  validates :annual_revenue, numericality: { greater_than: 0}

  def initialize(name)
    @name = name
    super
  end

  def gender_apparel
    if :mens_apparel === nil && :womens_apparel === nil
      errors.add(:mens_apparel, "must carry at least one of the men's or women's apparel")
    end
  end
end
