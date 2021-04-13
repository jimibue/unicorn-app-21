class CreateTrustees < ActiveRecord::Migration[6.1]
  def change
    create_table :trustees do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :trustee, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
