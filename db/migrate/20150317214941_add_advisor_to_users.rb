class AddAdvisorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :advisor, :boolean, default: false
  end
end
