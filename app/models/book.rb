# Book Model
class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :publisher, polymorphic: true

  validates :title, presence: true
  validates :price, presence: true
  validates :author, presence: true
end
