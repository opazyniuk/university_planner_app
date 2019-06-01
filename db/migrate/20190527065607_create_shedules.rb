class CreateShedules < ActiveRecord::Migration[5.2]
  def change
    create_table :shedules do |t|
      t.belongs_to :user
      t.belongs_to :group
      t.integer :semestr
      t.string :study_year

      t.timestamps
    end
  end
end
