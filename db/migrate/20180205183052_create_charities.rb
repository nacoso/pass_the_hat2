class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :charity_id_stripe

      t.timestamps
    end
  end
end
