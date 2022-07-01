class CreateDissertations < ActiveRecord::Migration[7.0]
  def change
    create_table :dissertations do |t|
      t.string :title
      t.references :language, null: false, foreign_key: true
      t.date :date_submited

      t.timestamps
    end
  end
end
