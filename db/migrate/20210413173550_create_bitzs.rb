class CreateBitzs < ActiveRecord::Migration[6.1]
  def change
    create_table :bitzs do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :issuer, null: false, foreign_key: {to_table: :users}
      t.belongs_to :bitz_def, null: false, foreign_key: true
      t.string :value
      t.timestamps
    end
  end
end
