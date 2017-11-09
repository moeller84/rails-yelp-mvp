class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true


    CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  def self.categories
    CATEGORIES
  end
end
