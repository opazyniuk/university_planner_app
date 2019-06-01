class CreateDisciplinesSchedulesJoinTable < ActiveRecord::Migration[5.2]
  def change
    # If you want to add an index for faster querying through this join:
    create_join_table :disciplines, :shedules do |t|
      t.index :disciplines_id
      t.index :schedules_id
    end
  end
end

