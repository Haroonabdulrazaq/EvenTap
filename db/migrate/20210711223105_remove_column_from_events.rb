class RemoveColumnFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :eventType, :text
    remove_column :events, :attend, :boolean
  end
end
