class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name, null: false
      t.string :size
      t.string :race 
      t.string :subtype
      t.string :alignment
      t.string :armor_class
      t.string :hit_points
      t.string :hit_dice
      t.string :speed
      t.string :strength
      t.string :dexterity
      t.string :constitution
      t.string :intelligence
      t.string :wisdom
      t.string :charisma
      t.string :wisdom_save
      t.string :damage_vulnerabilities
      t.string :damage_resistances
      t.string :damage_immunities
      t.string :condition_immunities
      t.string :senses
      t.string :languages
      t.string :challenge_rating
      t.string :constitution_save
      t.string :perception
      t.string :history
      t.string :intelligence_save
      t.string :religion
      t.string :medicine
      t.string :stealth
      t.string :dexterity_save
      t.string :charisma_save
      t.string :persuasion
      t.string :insight
      t.string :deception
      t.string :athletics
      t.string :arcana
      t.string :nature
      t.string :acrobatics
      t.string :strength_save
      t.string :survival
      t.string :investigation
      t.string :intimidation
      t.string :performance
    end
  end
end
