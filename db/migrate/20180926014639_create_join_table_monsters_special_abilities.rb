class CreateJoinTableMonstersSpecialAbilities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :monsters, :special_abilities  do |t|
      t.belongs_to :monsters, index: true
      t.belongs_to :special_abilities, index: true
    end
  end
end
