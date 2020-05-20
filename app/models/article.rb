class Article < ApplicationRecord
  CATEGORY = ['news', 'résultats', 'stratégie', 'article']
  has_many :paragraphs, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :links, dependent: :destroy
  has_many_attached :photos
  validates :title, presence: true, length: {in: 1..55}
  validates :content, presence: true
  validates :category, presence: true, inclusion: {in: CATEGORY }

  include PgSearch::Model
  pg_search_scope :search_global,
    against: [ :category, :title, :content ],
    using: {
      tsearch: { prefix: true }
    }
end



