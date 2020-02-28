class CreateMhps < ActiveRecord::Migration[5.2]
  def change
    create_table :mhps do |t|
      t.column :name, :string
      t.column :occupation, :string
      t.column :address, :string
      t.column :insurance, :string
      t.column :accepting, :string
      t.column :email, :string
      t.column :phone, :integer
      t.column :bio, :string
      t.column :link, :string
      t.timestamps
    end
  end
end
