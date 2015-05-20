class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dp_url, :string
    add_column :users, :blog_url, :string
    add_column :users, :ld_url, :string
    add_column :users, :rollno, :string
    add_column :users, :phone, :string
  end
end
