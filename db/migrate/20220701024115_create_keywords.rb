class CreateKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :keywords do |t|
      t.references :language, null: false, foreign_key: true
      t.string :word

      t.timestamps
    end
  end
end
