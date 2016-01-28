class AddPastTimeToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :past_time, :string
  end
end
