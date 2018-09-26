class CreateJoinTableMonstersSpecialAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters_special_abilities, id: false do |t|
      t.belongs_to :monster, index: true
      t.belongs_to :special_ability, index: true
    end
  end
end
