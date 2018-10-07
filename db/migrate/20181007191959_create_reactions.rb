class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.string :name
      t.string :description
      t.integer :attack_bonus

      t.timestamps
    end
  end
end
