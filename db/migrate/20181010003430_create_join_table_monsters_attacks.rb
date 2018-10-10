class CreateJoinTableMonstersAttacks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :monsters, :attacks do |t|
      t.belongs_to :monsters, index: true
      t.belongs_to :attacks, index: true

    end
  end
end
