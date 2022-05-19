class AddAddressAndCoordinatesToShorties < ActiveRecord::Migration[6.1]
  def change
    add_column :shorties, :address, :string
    add_column :shorties, :latitude, :float
    add_column :shorties, :longitude, :float
  end
end
