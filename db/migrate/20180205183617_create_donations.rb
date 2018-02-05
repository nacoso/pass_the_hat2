class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.belongs_to :user_charity, foreign_key: true

      t.timestamps
    end
  end
end
