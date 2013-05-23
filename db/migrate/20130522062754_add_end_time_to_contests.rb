class AddEndTimeToContests < ActiveRecord::Migration
  def change
    add_column :contests, :end_time, :integer
  end
end
