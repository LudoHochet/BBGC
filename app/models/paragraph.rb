class Paragraph < ApplicationRecord
  has_one_attached :photo
  belongs_to :article
end
