class AddSeibetsuToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :seibetsu, :string
  end
end
