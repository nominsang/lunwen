class AddDissertationToAbstracts < ActiveRecord::Migration[7.0]
  def change
    add_reference :abstracts, :dissertation, null: false, foreign_key: true
  end
end
