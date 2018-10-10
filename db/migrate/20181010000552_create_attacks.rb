class CreateAttacks < ActiveRecord::Migration[5.2]
  def change
    create_table :attacks do |t|
      t.string :name
      t.string :description
      t.string :damage_dice
      t.integer :damage_bonus

      
    end
  end
end
