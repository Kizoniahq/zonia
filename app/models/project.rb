class Project < ApplicationRecord
  mount_uploader :projectimage, ProjectimageUploader
  belongs_to :management
  belongs_to :team
end
