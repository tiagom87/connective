class RenameNationality < ActiveRecord::Migration
  def change
  	rename_column :users, :nationality, :country
  end
end
