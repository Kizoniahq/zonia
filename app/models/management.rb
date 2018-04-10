class Management < ApplicationRecord
  mount_uploader :managementimage, ManagementimageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

 has_many :projects
 has_many :contacts
 has_many :teams

end
