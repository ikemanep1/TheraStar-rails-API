class Review < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  scope :search, -> (search_parameter) { where("name like ?", "%#{search_parameter}%")}
  scope :content_search, -> (search_parameter) { where("content like ?", "%#{search_parameter}%")}
end
