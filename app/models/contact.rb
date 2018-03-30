class Contact < ApplicationRecord
  has_many :comments, dependent: :destroy
end
