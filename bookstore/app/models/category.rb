class Category < ActiveRecord::Base
  has_many :books
  validates :name, uniqueness: true
  scope :active, ->{ where(active: true)}
end
