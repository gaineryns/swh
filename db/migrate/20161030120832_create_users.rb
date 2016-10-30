class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 25
      t.string "username"
      t.string "address"
      t.string "email"
      t.string "password_digest"
      t.string "phone"


      t.timestamps
    end
  end

  def down
    drop_table :users;
  end
end
