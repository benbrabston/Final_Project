class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :email_end
      t.string :first_name
      t.string :last_name
      t.integer :school_id
      t.string :pref_location
      t.string :gender
      t.string :country
      t.integer :dorm_id
      t.boolean :admin, :default => 0
      t.boolean :school_admin, :default => 0

      t.timestamps

    end
  end
end
