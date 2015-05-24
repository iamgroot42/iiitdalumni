class RemoveDpUrlFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :dp_url
  end
end
