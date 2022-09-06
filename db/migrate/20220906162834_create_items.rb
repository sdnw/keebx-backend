class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
