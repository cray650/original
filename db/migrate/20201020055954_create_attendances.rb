class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.time :in
      t.time :out
      

      t.timestamps
    end
  end
end
