class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, index: true
      t.string :title
      t.string :image_url

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end
end
