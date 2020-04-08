class Article < ApplicationRecord
  has_many_attached :photos
  CATEGORY = ['news', 'résultats', 'strategie', 'article']
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true, inclusion: {in: CATEGORY }
end



