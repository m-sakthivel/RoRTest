class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :duration
      t.date :date
      t.text :description

      t.timestamps null: false
    end
  end
end
