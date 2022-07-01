class CreateContributors < ActiveRecord::Migration[7.0]
  def change
    create_table :contributors do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :professional_title
      t.text :about

      t.timestamps
    end
  end
end
