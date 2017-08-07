class CreateTranings < ActiveRecord::Migration[5.1]
  def change
    create_table :tranings do |t|
      t.string :date_begin
      t.string :date_end
      t.text :description
      t.string :hours
      t.string :investiment

      t.timestamps
    end
  end
end
