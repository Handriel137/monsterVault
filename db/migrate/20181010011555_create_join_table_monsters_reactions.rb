class CreateJoinTableMonstersReactions < ActiveRecord::Migration[5.2]
  def change
    create_join_table :monsters, :reactions do |t|
      t.belongs_to :monsters, index: true
      t.belongs_to :reactions, index: true
    end
  end
end
