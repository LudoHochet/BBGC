class Article < ApplicationRecord
  CATEGORY = ['news', 'résultats', 'strategie', 'article']
  has_many_attached :photos
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true, inclusion: {in: CATEGORY }

  include PgSearch::Model
  pg_search_scope :search_global,
    against: [ :category, :title, :content ],
    using: {
      tsearch: { prefix: true }
    }
end



