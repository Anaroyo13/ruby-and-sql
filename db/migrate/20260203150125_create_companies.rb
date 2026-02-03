class CreateCompanies < ActiveRecord::Migration[8.1]
  def change
    create_table :companies do |t| #creating the columns of the table; the primary code is build in, so you don't have to put it on top in the code
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps #will show when was added and when it was last modified, one column for each of the infos
    end
  end
end
