class CreateSpecialAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :special_abilities do |t|
      t.string :name, null: false
      t.string :description
      t.integer :attack_bonus
      t.string :damage_dice
      
    end
  end
end
