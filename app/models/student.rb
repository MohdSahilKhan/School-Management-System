class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :trackable

  validates :full_name, presence: true
  validates :contact_number, presence: true
  validates :parent_name, presence: true
  validates :email, presence: true
  has_one_attached :image
end
