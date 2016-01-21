# Author Model
class Author < ActiveRecord::Base
  has_many :books
  has_many :published, foreign_key: :publisher_id, class_name: 'Book', as: :publisher

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100 }
end
