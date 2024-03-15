class AddPublishedAtToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :places, :published_at, :datetime
    add_index :places, :published_at
  end
end
