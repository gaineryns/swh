class CreateCategoryUsers < ActiveRecord::Migration[5.0]

  def up
    create_table :category_users do |t|
      t.column "name", :string
      t.timestamps
    end
  end

  def down
    drop_table :category_users;
  end
end
