class AddForeignKeyToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :albmun, :users
  end
end
