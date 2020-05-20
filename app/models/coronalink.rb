class Coronalink < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :link, presence: true
    scope :search, -> (search_parameter) { where("name like ?", "%#{search_parameter}%")}
    scope :description_search, -> (search_parameter) { where("description like ?", "%#{search_parameter}%")}
    scope :link_search, -> (search_parameter) { where("link like ?", "%#{search_parameter}%")}
  end
  