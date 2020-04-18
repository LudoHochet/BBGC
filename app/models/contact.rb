class Contact < ApplicationRecord
  validates :email,
    :presence => :true,
    :format => {
      :with => /\S+@\S+\.\S+/i,
      :message => "must be a valid email address"
    }
  validates :message, :presence => :true
end
