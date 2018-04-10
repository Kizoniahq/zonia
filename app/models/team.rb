class Team < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :management
  has_many :projects
end
