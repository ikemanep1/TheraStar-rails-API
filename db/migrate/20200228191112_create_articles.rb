class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.column :name, :string
      t.column :link, :string
      t.column :description, :string
      t.timestamps
    end
  end
end
