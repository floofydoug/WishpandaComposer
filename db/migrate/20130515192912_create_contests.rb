class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :contest_name
      t.integer :user_id
      t.text :contest_description
      t.integer :contest_type
      t.text :contest_prize_image
      t.datetime :contest_start_date
      t.datetime :contest_end_date

      t.timestamps
    end
  end
end
