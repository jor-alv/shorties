class AddFeaturesToShorties < ActiveRecord::Migration[6.1]
  def change
    add_column :shorties, :features, :text
  end
end
