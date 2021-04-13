class CreateBitzDefs < ActiveRecord::Migration[6.1]
  def change
    create_table :bitz_defs do |t|
      t.string :name
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
