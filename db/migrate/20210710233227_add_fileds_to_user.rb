class AddFiledsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :text
    add_column :users, :username, :text
  end
end
