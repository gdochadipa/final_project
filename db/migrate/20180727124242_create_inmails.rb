class CreateInmails < ActiveRecord::Migration[5.2]
  def change
    create_table :inmails do |t|
      t.text :title
      t.text :from
      t.text :to
      t.date :datecoming
      t.text :mailtext
      t.text :response
      t.integer :dispo_id

      t.timestamps
    end
  end
end
