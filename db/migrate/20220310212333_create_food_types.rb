class CreateFoodTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :food_types do |t|
      t.string :name
      t.string :country
      t.belongs_to :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
