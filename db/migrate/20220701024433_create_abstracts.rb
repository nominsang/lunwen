class CreateAbstracts < ActiveRecord::Migration[7.0]
  def change
    create_table :abstracts do |t|
      t.references :language, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
