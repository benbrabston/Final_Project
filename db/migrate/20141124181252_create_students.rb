class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :pref_location
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
      t.string :gender
      t.integer :gender_i
      t.string :country
      t.integer :dorm_id

      t.timestamps

    end
  end
end
