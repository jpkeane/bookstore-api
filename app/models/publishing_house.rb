# Publishing House Model
class PublishingHouse < ActiveRecord::Base
  has_many :published, as: :publisher, foreign_key: :publisher_id, class_name: 'Book'

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100 }
  validates :discount, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
