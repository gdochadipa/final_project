class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :phone
      t.text :username

      t.timestamps
    end
  end
end
