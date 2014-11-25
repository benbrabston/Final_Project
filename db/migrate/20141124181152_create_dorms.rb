class CreateDorms < ActiveRecord::Migration
  def change
    create_table :dorms do |t|
      t.string :name
      t.string :address
      t.integer :size
      t.integer :gender_i
      t.integer :crit_1
      t.integer :crit_2
      t.integer :crit_3
      t.integer :crit_4
      t.integer :crit_5
      t.integer :crit_6
      t.integer :crit_7
      t.integer :crit_8
      t.integer :crit_9
      t.integer :crit_10

      t.timestamps

    end
  end
end
