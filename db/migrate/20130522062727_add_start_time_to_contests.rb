class AddStartTimeToContests < ActiveRecord::Migration
  def change
    add_column :contests, :start_time, :integer
  end
end
