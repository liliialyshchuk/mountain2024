class AddAuthorToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_reference :places, :author
  end
end
