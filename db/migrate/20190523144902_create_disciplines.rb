class CreateDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplines do |t|
      t.string :name
      t.decimal :credits
      t.string :type_of_discipline
      t.string :day
      t.integer :pair
      t.string :lecturer
      t.string :learning_type
      t.string :description

      t.timestamps
    end
  end
end
