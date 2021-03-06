class CreateTableContact < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :contacts, :user_id

    create_table :contact_shares do |t|
      t.integer :contact_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :contact_shares, [:contact_id, :user_id], unique: true
    add_index :contact_shares, :user_id
    add_index :contact_shares, :contact_id
  end
end
