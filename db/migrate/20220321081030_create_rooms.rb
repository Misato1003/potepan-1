
class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.date :first_day
      t.date :last_day
      t.boolean :last_check
      t.string :memo

      t.timestamps
    end
  end
end
