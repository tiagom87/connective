class AddExtraToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mini_bio, :string
    add_column :users, :nationality, :string
    add_column :users, :latest_position, :string
    add_column :users, :university, :string
    add_column :users, :experience, :text
  end
end
