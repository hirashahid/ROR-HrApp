class Employee < ApplicationRecord

  has_many :documents

  validates :first_name, :last_name, presence: true
  validates :personal_email, presence: true, uniqueness: true
  validates :city, :country, :address, presence: true

  def name
    "#{first_name} #{last_name}".strip
  end

end
