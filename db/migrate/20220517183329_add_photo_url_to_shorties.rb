class AddPhotoUrlToShorties < ActiveRecord::Migration[6.1]
  def change
    add_column :shorties, :photo_url, :string
  end
end
