class Contact < ApplicationRecord
  has_many :mails, dependent: :destroy
  belongs_to :management

end
