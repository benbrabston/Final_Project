class CreateFFactors < ActiveRecord::Migration
  def change
    create_table :f_factors do |t|
      t.integer :student_id
      t.string :gender
      t.float :factor_1
      t.float :factor_2
      t.float :factor_3
      t.float :factor_4
      t.float :factor_5
      t.float :factor_6

      t.timestamps

    end
  end
end
