class Employee < ApplicationRecord

  resourcify

  has_many :users, through: :roles, class_name: 'User', source: :users
  has_many :registrar, -> { where(roles: { name: :registrar }) }, through: :roles, class_name: 'User', source: :users

  has_many :documents

  validates :first_name, :last_name, presence: true
  validates :personal_email, presence: true, uniqueness: true
  validates :city, :country, :address, presence: true

  def name
    "#{first_name} #{last_name}".strip
  end

end
