class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :student_id
      t.string :principal_investigator_id
      t.string :name
      t.integer :grant_amount
      t.string :grant_type
    end
  end
end
