class CreateJoinTableMonstersSpecialAbilities < ActiveRecord::Migration[5.2]
  def change
    create_join_table :monster, :special_ability  do |t|
      t.belongs_to :monster, index: true
      t.belongs_to :special_ability, index: true
    end
  end
end
