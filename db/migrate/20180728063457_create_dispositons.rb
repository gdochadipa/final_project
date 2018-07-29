class CreateDispositons < ActiveRecord::Migration[5.2]
  def change
    create_table :dispositons do |t|
      t.text :dispocode
      t.integer :inmail_id
      t.text :to
      t.text :comment
      t.text :status
      t.integer :user_id

      t.timestamps
    end
  end
end
