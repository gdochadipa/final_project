class CreateOutmails < ActiveRecord::Migration[5.2]
  def change
    create_table :outmails do |t|
      t.text :title
      t.text :to
      t.date :datesend
      t.text :mailtext
      t.text :response

      t.timestamps
    end
  end
end
