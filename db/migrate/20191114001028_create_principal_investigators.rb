class CreatePrincipalInvestigators < ActiveRecord::Migration[5.2]
  def change
    create_table :principal_investigators do |t|
      t.string :name
      t.string :discipline
    end
  end
end
