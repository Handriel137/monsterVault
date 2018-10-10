class CreateJoinTableMonstersLegendaryActions < ActiveRecord::Migration[5.2]
  def change
    create_join_table :monsters, :legendary_actions do |t|
      t.belongs_to :monsters, index: true
      t.belongs_to :legendary_actions, index: true
    end
  end
end
