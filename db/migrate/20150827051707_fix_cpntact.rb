class FixCpntact < ActiveRecord::Migration
  def change
    rename_column :events, :cpntact, :contact
  end
end
