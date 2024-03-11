class DeletePhotos < ActiveRecord::Migration[7.1]
  def change
    drop_table :photos
  end
end
