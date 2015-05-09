class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :YOJ
      t.integer :YOL
      t.boolean :alumni
      t.string :pursued
      t.text :description
      t.string :current_designation
      t.string :company_or_institution

      t.timestamps null: false
    end
  end
end
