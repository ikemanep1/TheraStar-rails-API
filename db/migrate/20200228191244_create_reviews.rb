class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :name, :string
      t.column :subject, :string
      t.column :rating, :integer
      t.column :content, :string
    end
  end
end
