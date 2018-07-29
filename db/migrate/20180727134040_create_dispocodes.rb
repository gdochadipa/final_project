class CreateDispocodes < ActiveRecord::Migration[5.2]
  def change
    create_table :dispocodes do |t|
      t.text :dispo_title

      t.timestamps
    end
  end
end
