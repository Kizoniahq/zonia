class Project < ApplicationRecord
  mount_uploader :projectimage, ProjectimageUploader
  belongs_to :management

end
