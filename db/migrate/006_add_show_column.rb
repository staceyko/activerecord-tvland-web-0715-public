class AddShowColumn < ActiveRecord::Migration
  def change
    change_table :shows do |t| #change_table doesn't replace the other table; it adds the following columns
      t.string :genre
      t.string :day
      t.string :season
    end
  end
end
