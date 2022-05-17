class AddNameToShorties < ActiveRecord::Migration[6.1]
  def change
    add_column :shorties, :name, :string
  end
end
