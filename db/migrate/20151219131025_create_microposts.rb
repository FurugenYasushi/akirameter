class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.references :user, index: true , foreign_key: true
      t.text :content

       t.references :twitter_user_id, index: true
      t.timestamps null: false
      t.index [:twitter_user_id, :created_at]
    end
  end
end
