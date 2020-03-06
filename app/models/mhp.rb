class Mhp < ApplicationRecord
  validates :name, presence: true
  validates :occupation, presence: true
  validates :address, presence: true
  validates :insurance, presence: true
  validates :accepting, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :bio, presence: true
  validates :link, presence: true
  scope :search, -> (search_parameter) { where("name like ?", "%#{search_parameter}%")}
  scope :occupation_search, -> (search_parameter) { where("occupation like ?", "%#{search_parameter}%")}
  scope :address_search, -> (search_parameter) { where("address like ?", "%#{search_parameter}%")}
  scope :insurance_search, -> (search_parameter) { where("insurance like ?", "%#{search_parameter}%")}
  scope :accepting, -> (search_parameter) { where("accepting like ?", "%#{search_parameter}%")}
  scope :email_search, -> (search_parameter) { where("email like ?", "%#{search_parameter}%")}
  scope :phone_search, -> (search_parameter) { where("phone like ?", "%#{search_parameter}%")}
  scope :bio_search, -> (search_parameter) { where("bio like ?", "%#{search_parameter}%")}
  scope :link_search, -> (search_parameter) { where("link like ?", "%#{search_parameter}%")}
end
