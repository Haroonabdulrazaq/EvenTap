class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.datetime :date
      t.boolean :attend
      t.text :eventType

      t.timestamps
    end
  end
end
