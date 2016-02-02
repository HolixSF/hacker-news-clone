class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :password_hash, :null => false
      t.timestamps
      # t.string :first_name, :null => false
      # t.string :last_name, :null => false
      # t.string :email, :null => false
      # Use password_digest instead of password_hash
      # for BCrypt `has_secure_password` method
      # t.string :password_digest, :null => false
    end
    # add_index :users, :email, :unique => true
  end
end
