class AddGenreToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :genre, :string
  end
end
