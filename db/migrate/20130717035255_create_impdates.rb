class CreateImpdates < ActiveRecord::Migration
  def change
    create_table :impdates do |t|
      t.date :impdate
      t.string :explanation

      t.timestamps
    end
  end
end
