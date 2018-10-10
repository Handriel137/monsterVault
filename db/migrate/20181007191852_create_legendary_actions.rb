class CreateLegendaryActions < ActiveRecord::Migration[5.2]
  def change
    create_table :legendary_actions do |t|
      t.string :name
      t.string :description
      t.integer :attack_bonus
      t.string :damage_dice

      
    end
  end
end
