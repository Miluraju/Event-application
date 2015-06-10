class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.time :eventtime
      t.date :eventdate
      t.string :status

      t.timestamps null: false
    end
  end
end
