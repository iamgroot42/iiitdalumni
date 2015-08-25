class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.string :where
      t.string :fb_link
      t.text :description
      t.string :bg_pic
      t.string :title
      t.text :organizer
      t.email :contact

      t.timestamps null: false
    end
  end
end
