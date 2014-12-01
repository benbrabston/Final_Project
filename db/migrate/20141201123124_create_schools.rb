class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :email_end
      t.string :theme

      t.timestamps

    end
  end
end
