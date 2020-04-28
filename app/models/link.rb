class Link < ApplicationRecord
  belongs_to :article
  validates :link, presence: true
  validates :label, presence: true
end
