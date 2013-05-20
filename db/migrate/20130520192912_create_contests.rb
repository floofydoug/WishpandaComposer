class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date

      # Would we need timestamps?
      # t.timestamps
    end
  end
end
