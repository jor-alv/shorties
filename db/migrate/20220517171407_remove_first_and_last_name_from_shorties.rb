class RemoveFirstAndLastNameFromShorties < ActiveRecord::Migration[6.1]
  def change
    remove_column :shorties, :first_name, :string
    remove_column :shorties, :last_name, :string
  end
end
