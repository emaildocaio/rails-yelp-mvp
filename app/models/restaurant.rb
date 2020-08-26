class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  before_validation :downcase

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}


  def downcase
    self.category = self.category.downcase
  end
end
