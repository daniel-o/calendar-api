class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.datetime :start, null: false, index: true
      t.datetime :end, null: false

      t.timestamps
    end
  end
end
