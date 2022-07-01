class CreateAlternativeTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :alternative_titles do |t|
      t.references :language, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
