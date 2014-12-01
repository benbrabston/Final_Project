class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email_end
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :pref_location
      t.string :gender
      t.string :country
      t.integer :dorm_id

      t.timestamps

    end
  end
end
