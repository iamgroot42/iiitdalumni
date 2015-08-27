class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.string :title
      t.text :summary
      t.text :description
      t.references :user, index: true
      t.text :contact
      t.text :venue
      t.string :fblink
      t.string :photo

      t.timestamps null: false
    end
    add_foreign_key :events, :users
  end
end
