class AddAgeToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :age, :string
  end
end
