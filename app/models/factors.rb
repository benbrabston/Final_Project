class Factor < ActiveRecord::Base

  def self.to_csv
    CSV.generate do |csv|
      csv << self.keys
      all.each do |response|
        csv << response.attributes.values_at(*column_names)
      end
    end
  end

  # TODO SIMPLIFY THE DATABASE CREATION PROCESS

  # # Simplify cluster process
  # def create_table_for_clustering
  #   if Cluster_data.present?
  #     ActiveRecord::Migration.drop_table(:cluster_data)
  #   end


  #   # Populate all of the student data into a suitable data file
  #   create_table :cluster_data do |t|
  #     t.integer :student_id

  #     # Create a column for each question asked - note number of questions may vary by school, so the number of columns is TBD
  #     Response.where({ :school_id => params[:school_id]})question_id.each do |question|
  #       t.integer "question_#{question}"
  #     end

  #     t.timestamps
  #   end
  # end
end
