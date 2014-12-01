class CreateDorms < ActiveRecord::Migration
  def change
    create_table :dorms do |t|
      t.string :name
      t.string :address
      t.string :location
      t.integer :size
      t.integer :gender_i
      t.integer :school_id

      t.timestamps

    end
  end
end
