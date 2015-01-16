class Book < ActiveRecord::Base
  acts_as_commentable
  belongs_to :author
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates_numericality_of :price, greater_than: 0

  has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/books/covers/default/:style/missing.jpg"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  scope :avaiable, ->{where("LENGTH(title) > 3")}
end
