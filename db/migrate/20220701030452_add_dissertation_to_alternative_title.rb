class AddDissertationToAlternativeTitle < ActiveRecord::Migration[7.0]
  def change
    add_reference :alternative_titles, :dissertation, null: false, foreign_key: true
  end
end
