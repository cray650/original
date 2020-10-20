class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.time :attending,        null: false
      t.time :leaving,          null: false
      t.time :working_time,     null: false
      t.time :overtime,         null: false

      t.timestamps
    end
  end
end
