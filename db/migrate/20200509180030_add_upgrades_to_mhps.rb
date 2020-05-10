class AddUpgradesToMhps < ActiveRecord::Migration[5.2]
  def change
    add_column(:mhps, :imgref, :string)
    add_column(:mhps, :latitude, :string)
    add_column(:mhps, :longitude, :string)
  end
end
