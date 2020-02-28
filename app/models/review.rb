class Review < ApplicationRecord
  validates :name, presence: true
  validates :subject, presence: true
  validates :rating, presence: true
  validates :content, presence: true
  scope :search, -> (search_parameter) { where("name like ?", "%#{search_parameter}%")}
  scope :subject_search, -> (search_parameter) { where("subject like ?", "%#{search_parameter}%")}
  scope :rating_search, -> (search_parameter) { where("rating like ?", "%#{search_parameter}%")}
  scope :content_search, -> (search_parameter) { where("content like ?", "%#{search_parameter}%")}
end
