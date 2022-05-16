class CreateShorties < ActiveRecord::Migration[6.1]
  def change
    create_table :shorties do |t|
      t.integer :height
      t.string :first_name
      t.string :last_name
      t.integer :price
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
